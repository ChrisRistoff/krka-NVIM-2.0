-- -- https://github.com/oxfist/night-owl.nvim

local one_dark = {
    {
        "oxfist/night-owl.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("night-owl")
        end,
    },
}

return one_dark
