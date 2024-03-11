-- set space as the leader key
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- free C-l and C-h to navigate between buffers
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })

-- copy to clipboard in visual and copy the whole line in normal mode
vim.api.nvim_set_keymap('v', 'Y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'Y', '"+yy', { noremap = true })


-- move visual selection
-- move up
vim.api.nvim_set_keymap('x', '[', ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- move down
vim.api.nvim_set_keymap('x', ']', ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

-- replace all instances of a word
vim.api.nvim_set_keymap('n', '<leader>rr', ':%s//<Left>',
    { noremap = true, silent = true, desc = "Replace all instances of a word" })

-- semicolon at the end of a line
vim.api.nvim_set_keymap('n', '<A-w>', '<Esc>A;<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'dr', '0d$a', { noremap = true, silent = true })
