-- https://github.com/kevinhwang91/nvim-ufo

return {
    -- This entry is for nvim-ufo and its dependency
    {
        'kevinhwang91/nvim-ufo',
        requires = 'kevinhwang91/promise-async',
        config = function()
            require('ufo').setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return { 'treesitter', 'indent' }
                end
            })

            -- Setting foldlevel to prevent everything from being folded on open/save
            vim.o.foldlevel = 99
        end
    },
}
