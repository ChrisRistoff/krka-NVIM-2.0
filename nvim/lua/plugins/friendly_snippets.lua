-- https://github.com/rafamadriz/friendly-snippets

return {
    "rafamadriz/friendly-snippets",
    event = "InsertEnter",      -- Adjust the event as necessary
    after = "L3MON4D3/LuaSnip", -- Ensure LuaSnip loads first
    config = function()
        local ls = require("luasnip")

        -- Extend 'typescript' and 'typescriptreact' filetypes
        ls.filetype_extend("typescript", { "javascript" })
        ls.filetype_extend("typescriptreact", { "javascriptreact", "typescript", "javascript" })

        -- Lazy loading of VSCode snippets
        require("luasnip.loaders.from_vscode").lazy_load()
    end,
}
