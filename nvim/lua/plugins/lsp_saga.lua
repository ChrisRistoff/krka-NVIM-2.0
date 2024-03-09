-- https://github.com/glepnir/lspsaga.nvim

return {
    'glepnir/lspsaga.nvim', -- Ensure this points to the correct repository
    config = function()
        require('lspsaga').setup({
            symbol_in_winbar = {
                enable = true,
            },

            implement = {
                enable = true,
                sign = true,
                priority = 100,
            },

            lightbulb = {
                virtual_text = false,
            },
        })
        -- define on_attach function to customize key mappings
        local on_attach = function(client, bufnr)
            local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
            local opts = { noremap = true, silent = true }

            -- code action when pressing '<leader>ca'
            -- buf_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
            buf_set_keymap('n', '<A-Enter>', '<cmd>Lspsaga code_action<CR>', opts)
        end

        -- Setup lspconfig for tsserver with the custom on_attach function
        require('lspconfig').tsserver.setup({
            on_attach = on_attach,
        })

        -- setup lspconfig for other languages
        require('lspconfig').pyright.setup({
            on_attach = on_attach,
        })

        require('lspconfig').jsonls.setup({
            on_attach = on_attach,
        })

        require('lspconfig').sqlls.setup({
            on_attach = on_attach,
        })

        require('lspconfig').yamlls.setup({
            on_attach = on_attach,
        })

        require('lspconfig').omnisharp.setup({
            on_attach = on_attach,
        })

        -- Include any additional LSP server configurations here, using the same on_attach function if desired
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons' -- optional
    }
}
