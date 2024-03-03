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
local friendly_snippets = require("plugins.friendly_snippets")
local lua_snip = require("plugins.lua_snip")
local nvim_tree = require("plugins.nvim_tree")
local autoclose_brackets = require("plugins.autoclose_brackets")
local git_related = require("plugins.git_related")
local mason = require("plugins.mason")
local cmp = require("plugins.cmp")
local which_key = require("plugins.which_key")
local git_signs = require("plugins.git_signs")
local lua_line = require("plugins.lua_line")
local comment_lines = require("plugins.comment")
local telescope_setup, telescope_fzf_native_setup = require("plugins.telescope")
local copilot = require("plugins.copilot")

-- require themes
local one_dark = require("themes.one_dark")

-- setup lazy.nvim with all plugins
require("lazy").setup({
	-- themes
	one_dark,

	-- plugins
	lua_snip,

	friendly_snippets,

	nvim_tree,

	autoclose_brackets,

	git_related[1], -- vim fugitive
	git_related[2], -- vim rhubarb

	mason[1], mason[2],

	cmp,

        {
            "neovim/nvim-lspconfig",
            config = function()
                require("plugins.lsp_config").setup()
            end
        },

	which_key,

	git_signs,

	lua_line,

	comment_lines,

	telescope_setup,
	telescope_fzf_native_setup,

	copilot,
	-- add more plugins here
})

-- require('settings')  -- general neovim settings


-- keymaps imports
require("keymaps.general_maps")
require('keymaps.nvim_tree')
require("keymaps.fzf")
