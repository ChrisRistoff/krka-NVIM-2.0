#!/usr/bin/env bash

IDLE_TIMEOUT=600  # before killing server when not in use
CACHE_DIR="${HOME}/.cache/ts-lsp"
LOG_DIR="${CACHE_DIR}/logs"

mkdir -p "$CACHE_DIR" "$LOG_DIR"

# get project root
PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)
PROJECT_ROOT=$(cd "$(pwd)" && pwd)

# detect root using common markers
while [ "$PROJECT_ROOT" != "/" ]; do
  if [ -f "$PROJECT_ROOT/package.json" ] || [ -f "$PROJECT_ROOT/tsconfig.json" ] || [ -d "$PROJECT_ROOT/.git" ]; then
    break
  fi
  PROJECT_ROOT=$(dirname "$PROJECT_ROOT")
done

if [ "$PROJECT_ROOT" = "/" ]; then
  echo "No project root found. Exiting."
  exit 1
fi

# hash project root for port
PORT=$(( 20000 + ($(echo -n "$PROJECT_ROOT" | cksum | awk '{print $1}') % 1000) ))
PID_FILE="${CACHE_DIR}/pid_${PORT}"
LAST_USED_FILE="${CACHE_DIR}/last_used_${PORT}"
LOG_FILE="${LOG_DIR}/project_${PORT}.log"

start_server() {
  echo "[$(date)] Starting LSP for $PROJECT_ROOT on port $PORT" >> "$LOG_FILE"
  node -e "
    require('net')
      .createServer(socket => {
        const cp = require('child_process').spawn(
          'typescript-language-server',
          ['--stdio'],
          { stdio: ['pipe', 'pipe', 'inherit'] }
        );
        socket.pipe(cp.stdin);
        cp.stdout.pipe(socket);
      })
      .listen($PORT);
  " >> "$LOG_FILE" 2>&1 &
  SERVER_PID=$!
  echo "$SERVER_PID" > "$PID_FILE"
}

is_running() {
  lsof -iTCP:$PORT -sTCP:LISTEN -P -n >/dev/null 2>&1
}

update_last_used() {
  date +%s > "$LAST_USED_FILE"
}

idle_killer() {
  while true; do
    sleep 60
    if [ -f "$LAST_USED_FILE" ]; then
      LAST_USED=$(cat "$LAST_USED_FILE")
      NOW=$(date +%s)
      if [ $((NOW - LAST_USED)) -ge $IDLE_TIMEOUT ]; then
        if is_running; then
          echo "[$(date)] Stopping idle LSP for $PROJECT_ROOT on port $PORT" >> "$LOG_FILE"
          kill "$(cat "$PID_FILE")" 2>/dev/null
          rm -f "$PID_FILE" "$LAST_USED_FILE"
        fi
        exit 0
      fi
    fi
  done
}

if ! is_running; then
  start_server
  idle_killer &
fi

update_last_used()
