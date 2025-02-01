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

        -- typescript
        require('lspconfig').ts_ls.setup({
            on_attach = on_attach,
        })

        -- python
        require('lspconfig').pyright.setup({
            on_attach = on_attach,
        })

        -- html
        require('lspconfig').jsonls.setup({
            on_attach = on_attach,
        })

        -- css
        require('lspconfig').sqlls.setup({
            on_attach = on_attach,
        })

        -- yaml
        require('lspconfig').yamlls.setup({
            on_attach = on_attach,
        })

        -- csharp
        require('lspconfig').omnisharp.setup({
            on_attach = on_attach,
        })

        -- lua
        require('lspconfig').lua_ls.setup({
            on_attach = on_attach,
        })

        -- Include any additional LSP server configurations here, using the same on_attach function if desired
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons' -- optional
    }
}
