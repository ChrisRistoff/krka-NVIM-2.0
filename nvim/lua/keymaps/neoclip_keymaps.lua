local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>yy', '<cmd>Telescope neoclip<CR>', opts)
vim.keymap.set('n', '<leader>yq', '<cmd>Telescope macroscope<CR>', opts)
