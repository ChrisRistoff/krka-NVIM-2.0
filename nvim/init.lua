--  Author: Krasen Hristov
--  Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- require the plugin setups
local git_related = require("plugins.git_related")
local mason = require("plugins.mason")
local telescope_setup, telescope_fzf_native_setup = require("plugins.telescope")

-- setup lazy.nvim with all plugins
require("lazy").setup({
    -- themes
    require("themes.one_dark"),

    -- plugins
    require("plugins.lua_snip"),

    require("plugins.friendly_snippets"),

    require("plugins.nvim_tree"),

    require("plugins.autoclose_brackets"),

    git_related[1], -- vim fugitive
    git_related[2], -- vim rhubarb

    mason[1], mason[2],

    require("plugins.cmp"),

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.lsp_config").setup()
        end
    },

    require("plugins.which_key"),

    require("plugins.git_signs"),

    require("plugins.lua_line"),

    require("plugins.comment"),

    require("plugins.copilot"),

    require("plugins.tree_sitter"),

    require("plugins.copilot_chat"),

    require("plugins.jester"),

    require("plugins.lsp_saga"),

    telescope_setup,
    telescope_fzf_native_setup,
    -- add more
})

require('settings') -- general neovim settings

-- keymaps imports
require("keymaps.general_maps")
require('keymaps.nvim_tree')
require("keymaps.fzf")
require("keymaps.jester")
require("keymaps.lsp_saga")
vim.cmd('source /home/krasyo/.config/nvim/lua/keymaps/copilot_keys.vim')
