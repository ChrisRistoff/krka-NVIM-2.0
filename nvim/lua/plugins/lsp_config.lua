local M = {}

function M.setup()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "pyright", "rust_analyzer"},
    })

    local lspconfig = require("lspconfig")

    local on_attach = function(_, bufnr)
        local opts = { noremap=true, silent=true, buffer=bufnr }
        local keymap = vim.keymap.set
        keymap('n', 'gD', vim.lsp.buf.declaration, opts)
        keymap('n', 'gd', vim.lsp.buf.definition, opts)
        keymap('n', 'K', vim.lsp.buf.hover, opts)
        keymap('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
        keymap('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
        keymap('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
        keymap('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        keymap('n', 'gr', vim.lsp.buf.references, opts)
        keymap('n', '<leader>f', function() vim.lsp.buf.format{ async = true } end, opts)
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _, server in ipairs({"lua_ls", "tsserver", "pyright", "rust_analyzer"}) do
        lspconfig[server].setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end
end

return M

