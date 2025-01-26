--  Author: Krasen Hristov


-- Tell the Lua language server that `vim` is a global variable
_G.vim = vim

-- setup lazy.nvim
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



-- info: require where plugins > 1
local git_related = require("plugins.git_related")
local mason = require("plugins.mason")
local telescope_setup, telescope_fzf_native_setup = require("plugins.telescope")



-- info: Setup the plugins
require("lazy").setup({
    -- themes
    -- require("themes.night_owl"), -- for night

    -- require("themes.evergarden"), -- for morning

    -- require("themes.calvera"),

    require("themes.gruvbox_baby"),



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

    -- require("plugins.copilot"),

    -- require("plugins.copilot_chat"),

    require("plugins.tree_sitter"),

    require("plugins.jester"),

    require("plugins.lsp_saga"),

    require("plugins.indent_line"),

    require("plugins.editor_config"),

    require("plugins.mardown_preview"),

    require("plugins.startup"),

    require("plugins.hlslens"),

    require("plugins.cursorline"),

    require("plugins.TODO_comments"),

    require("plugins.fidget"),

    require("plugins.neoclip"),

    require("plugins.scrollbar"),

    require("plugins.cheatsheet"),

    -- require("plugins.vim-dadbod-ui"),

    require("plugins.git_messenger"),

    telescope_setup,
    telescope_fzf_native_setup,
    -- add more
})



-- info: general settings
require('settings')



-- info: keymaps setup
require("keymaps.general_keymaps")
require('keymaps.nvim_tree_keymaps')
require("keymaps.fzf_keymaps")
require("keymaps.jester_keymaps")
require("keymaps.lsp_saga_keymaps")
require("keymaps.neoclip_keymaps")
require("keymaps.git_messenger_keymaps")
-- vim.cmd('source /home/krasyo/.config/nvim/lua/keymaps/copilot_keymaps.vim')
