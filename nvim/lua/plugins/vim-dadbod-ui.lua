return {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
        { 'tpope/vim-dadbod', lazy = true },
        { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
        'DBUI',
        'DBUIToggle',
        'DBUIAddConnection',
        'DBUIFindBuffer',
    },
    init = function()
        -- Your DBUI configuration
        vim.g.db_ui_use_nerd_fonts = 1

        local creds = require("plugins_secrets.dadbod-ui-dblist")

        -- databases
        vim.g.dbs = creds.dbs
    end,
}

