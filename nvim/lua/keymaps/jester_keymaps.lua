-- jester keymaps
vim.api.nvim_set_keymap('n', '<leader>rt', ':lua require"jester".run()<CR>',
    { noremap = true, silent = true, desc = "Run test on cursor" })

vim.api.nvim_set_keymap('n', '<leader>rf', ':lua require"jester".run_file()<CR>',
    { noremap = true, silent = true, desc = "Run the whole test file" })

vim.api.nvim_set_keymap('n', '<leader>rl', ':lua require"jester".run_last()<CR>',
    { noremap = true, silent = true, desc = "Run last test" })

vim.api.nvim_set_keymap('n', '<leader>dt', ':lua require"jester".debug()<CR>',
    { noremap = true, silent = true, desc = "Debug test on cursor" })

vim.api.nvim_set_keymap('n', '<leader>df', ':lua require"jester".debug_file()<CR>',
    { noremap = true, silent = true, desc = "Debug whole file" })

vim.api.nvim_set_keymap('n', '<leader>dl', ':lua require"jester".debug_last()<CR>',
    { noremap = true, silent = true, desc = "Debug last test" })
