local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<leader>ci', '<cmd>Lspsaga show_cursor_diagnostics<CR>', opts)

-- hover doc
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)

-- open outgoing and incoming call
vim.keymap.set('n', '<leader>ce', '<cmd>Lspsaga incoming_calls<CR>', opts)
vim.keymap.set('n', '<leader>cq', '<cmd>Lspsaga outgoing_calls<CR>', opts)

-- peek definition
vim.keymap.set('n', '<leader>ct', '<cmd>Lspsaga peek_type_definition<CR>', opts)

-- finder
vim.keymap.set('n', '<leader>cf', '<cmd>Lspsaga finder<CR>', opts)

-- outline
vim.keymap.set('n', '<leader>co', '<cmd>Lspsaga outline<CR>', opts)

-- rename
vim.keymap.set('n', '<leader>cr', '<cmd>Lspsaga rename<CR>', opts)

-- help doc
vim.keymap.set('n', '<leader>ch', '<cmd>Lspsaga signature_help<CR>', opts)
