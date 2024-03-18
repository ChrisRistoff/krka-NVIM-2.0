local opts = { noremap = true, silent = true }

-- Show diagnostics on the current line
vim.keymap.set('n', '<leader>cdd', '<cmd>Lspsaga show_line_diagnostics<CR>', vim.tbl_extend('force', opts, { desc = 'Show Line Diagnostics' }))

-- Jump to the next diagnostic
vim.keymap.set('n', '<leader>cde', '<cmd>Lspsaga diagnostic_jump_prev<CR>', vim.tbl_extend('force', opts, { desc = 'Previous Diagnostic' }))

-- Jump to the previous diagnostic
vim.keymap.set('n', '<leader>cdq', '<cmd>Lspsaga diagnostic_jump_next<CR>', vim.tbl_extend('force', opts, { desc = 'Next Diagnostic' }))

-- show all diagnostics
vim.keymap.set('n', '<leader>cda', '<cmd>Lspsaga show_buf_diagnostics<CR>', vim.tbl_extend('force', opts, { desc = 'Show All Diagnostics' }))

-- Show diagnostics where the cursor is
vim.keymap.set('n', '<leader>cdc', '<cmd>Lspsaga show_cursor_diagnostics<CR>', vim.tbl_extend('force', opts, { desc = 'Show Cursor Diagnostics' }))

-- Hover documentation
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', vim.tbl_extend('force', opts, { desc = 'Hover Documentation' }))

-- View incoming calls to the symbol under cursor
vim.keymap.set('n', '<leader>ce', '<cmd>Lspsaga incoming_calls<CR>', vim.tbl_extend('force', opts, { desc = 'Incoming Calls' }))

-- View outgoing calls from the symbol under cursor
vim.keymap.set('n', '<leader>cq', '<cmd>Lspsaga outgoing_calls<CR>', vim.tbl_extend('force', opts, { desc = 'Outgoing Calls' }))

-- Peek type definition without moving
vim.keymap.set('n', '<leader>ct', '<cmd>Lspsaga peek_type_definition<CR>', vim.tbl_extend('force', opts, { desc = 'Peek Type Definition' }))

-- Finder to search and preview LSP entities
vim.keymap.set('n', '<leader>cf', '<cmd>Lspsaga finder<CR>', vim.tbl_extend('force', opts, { desc = 'LSP Finder' }))

-- Show outline of the current file
vim.keymap.set('n', '<leader>co', '<cmd>Lspsaga outline<CR>', vim.tbl_extend('force', opts, { desc = 'LSP Outline' }))

-- Rename the symbol under cursor
vim.keymap.set('n', '<leader>cr', '<cmd>Lspsaga rename<CR>', vim.tbl_extend('force', opts, { desc = 'Rename Symbol' }))
