vim.api.nvim_set_keymap('n', '<leader>gg', ':GitMessenger<CR>',
    { noremap = true, silent = true, desc = "Show git commit message" })
