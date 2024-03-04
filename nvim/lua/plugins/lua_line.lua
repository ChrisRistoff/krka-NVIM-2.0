-- https://github.com/hoob3rt/lualine.nvim

return {
    { -- Set lualine as statusline
        "nvim-lualine/lualine.nvim",
        -- See `:help lualine.txt`
        opts = {
            options = {
                theme = 'onedark',
                icons_enabled = true,
                component_separators = "|",
                section_separators = "",
            },
        },
    },
}
