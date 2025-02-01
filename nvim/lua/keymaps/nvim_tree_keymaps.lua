-- Nvim Tree
vim.keymap.set("n", "<F3>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F4>", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

-- toggle git ignore files to show or hide
_G.nvim_tree_git_ignore = false

function nvim_tree_ignore_toggle()

    _G.nvim_tree_git_ignore = not _G.nvim_tree_git_ignore

    require("nvim-tree").setup({
        git = {
            ignore = _G.nvim_tree_git_ignore
        }
    })
end

vim.api.nvim_set_keymap('n', '<F9>', ':lua nvim_tree_ignore_toggle()<CR>', { noremap = true, silent = true })
