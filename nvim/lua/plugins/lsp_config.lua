-- https://github.com/neovim/nvim-lspconfig

local M = {}

function M.setup()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "pyright", "jsonls", "sqlls", "yamlls" },
    })

    local lspconfig = require("lspconfig")

    local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        local keymap = vim.keymap.set
        keymap('n', 'gD', vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
        keymap('n', 'gd', vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
        keymap('n', 'gi', vim.lsp.buf.implementation,
            vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
        keymap('n', '<C-k>', vim.lsp.buf.signature_help,
            vim.tbl_extend("force", opts, { desc = "Show signature information" }))
        keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder,
            vim.tbl_extend("force", opts, { desc = "Add workspace folder" }))
        keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder,
            vim.tbl_extend("force", opts, { desc = "Remove workspace folder" }))
        keymap('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
            vim.tbl_extend("force", opts, { desc = "List workspace folders" }))
        keymap('n', '<leader>D', vim.lsp.buf.type_definition,
            vim.tbl_extend("force", opts, { desc = "Go to type definition" }))
        keymap('n', '<leader>rn', vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
        keymap('n', '<leader>ca', vim.lsp.buf.code_action,
            vim.tbl_extend("force", opts, { desc = "Show code actions" }))
        keymap('n', 'gr', vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "List references" }))
        keymap('n', '<leader>fr', function() vim.lsp.buf.format { async = true } end,
            vim.tbl_extend("force", opts, { desc = "Format document" }))
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _, server in ipairs({ "lua_ls", "tsserver", "pyright", "jsonls", "sqlls", "yamlls" }) do
        lspconfig[server].setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end
end

return M
