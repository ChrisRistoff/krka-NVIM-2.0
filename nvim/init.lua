-- Install lazy.nvim
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

-- setup lazy.nvim with all plugins
require("lazy").setup({
    lua_snip,
    friendly_snippets,
    nvim_tree,
    -- add more plugins here
})

-- require('settings')  -- general neovim settings


-- keymaps imports
require('keymaps.nvim_tree')   -- key mappings

-- LSP
-- require('lsp.settings')
