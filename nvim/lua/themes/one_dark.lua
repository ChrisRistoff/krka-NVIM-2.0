local one_dark = {
    { -- Theme inspired by Atom
        -- "navarasu/onedark.nvim",
        -- "ellisonleao/gruvbox.nvim",
        "oxfist/night-owl.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("night-owl")
        end,
    },
}

return one_dark
