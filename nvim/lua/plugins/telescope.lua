local telescope_setup = {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<C-d>"] = false,
                    },
                },
            },
        })

        -- Load the fzf native extension if available
        pcall(require("telescope").load_extension, "fzf")
    end
}

local telescope_fzf_native_setup = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = function()
        return vim.fn.executable("make") == 1
    end,
}

return telescope_setup, telescope_fzf_native_setup
