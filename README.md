# kra-NVIM 2.0!

#### Welcome to my personal Neovim setup! This repository contains all the configurations, plugins, and custom key mappings I use to enhance my development workflow in Neovim.

## Requirements

- [Neovim](https://neovim.io/) v0.9.0 or higher
- [Python](https://www.python.org/) v3.6 or higher
- [Node.js](https://nodejs.org/) v16.0 or higher
- [NPM](https://www.npmjs.com/) v7.0 or higher

## Installation

1. Clone this repository to your local machine.
```
git clone <repo-url>
```

2. Copy the nvim folder to your .config directory.
```
cp -r nvim ~/.config/
```

3. Open Neovim and run the following command to install all the plugins.
```
:Lazy Install
```

4. Restart Neovim and you're good to go!

# Plugins and Key Mappings

### Autoclose.nvim
##### [Repository](https://github.com/m4xshen/autoclose.nvim)
- Automatically closes brackets, quotes, and other pairs. Refer to lua/plugins/autoclose.lua for custom settings.

### Nvim-cmp
##### [Repository](https://github.com/hrsh7th/nvim-cmp)
- Autocompletion plugin that uses LSP sources. Refer to lua/plugins/cmp.lua for custom settings.
- #### Key Mappings
  - `<C-d>`: Scroll down the documentation popup
  - `<C-f>`: Scroll up the documentation popup
  - `<C-Space>`: Trigger completion
  - `<CR>`: Confirm completion
  - `<A-e>`: Cycle through completion items
  - `<A-q>`: Cycle through completion items in reverse


### Comment.nvim
##### [Repository](https://github.com/numToStr/Comment.nvim)
- Commenting plugin that supports multiple languages. Refer to lua/plugins/comment.lua for custom settings.

- ##### Key Mappings
  - `gcc`: Comment toggle line
  - `gcb`: Comment toggle block


### Copilot
##### [Repository](https://github.com/github/copilot.vim)
- A plugin that integrates GitHub Copilot into Neovim. Refer to lua/plugins/copilot.lua for custom settings.

- ##### Key Mappings
 - `C-l`: Accept a single word
 - `C-Right`: Accept a single character
 - `Tab`: Accept the current suggestion
 - `C-e`: See a list of suggestions


### Copilot Chat
##### [Repository](https://github.com/CopilotC-Nvim/CopilotChat.nvim)
- A plugin that integrates GitHub Copilot Chat into Neovim. Refer to lua/plugins/copilot_chat.lua for custom settings.

- ##### Key Mappings
 - `<leader>ccc`: Chat
 - `<leader>ccb`: Chat using current buffer
 - `<leader>cce`: Chat  using code at the cursor
 - `<leader>cct`: Generate test cases for the current code
 - `<leader>ccT`: Toggle a vertical split to view the chat
 - `<leader>ccr`: Refresh the chat window and clear the chat history
 - `<leader>ccf`: Get fixes for diagnostics under the cursor

### EditorConfig Vim Plugin
##### [Repository](https://github.com/gpanders/editorconfig.nvim)

- A plugin that integrates EditorConfig into Neovim. Refer to lua/plugins/editorconfig.lua for custom settings.

### Friendly Snippets
##### [Repository](https://github.com/rafamadriz/friendly-snippets)
- A plugin that provides a friendly interface for creating and managing snippets. Refer to lua/plugins/friendly_snippets.lua for custom settings. It integrates with luasnip and nvim-cmp.

### Vim-fugitive and Vim-rhubarb
##### [Fugitive Repository](https://github.com/tpope/vim-fugitive)
##### [Rhubarb Repository](https://github.com/tpape/vim-rhubarb)
- A plugin that provides a Git wrapper for Neovim. Refer to lua/plugins/fugitive.lua for custom settings. To use this plugin, you must have Git installed on your system.
- Usage write :Git to open the Git wrapper. Refer to documentation for more information.

### Gitsigns
##### [Repository](https://github.com/lewis6991/gitsigns.nvim)
- A plugin that provides Git signs in the sign column. Refer to lua/plugins/gitsigns.lua for custom settings.

### Indent-blankline.nvim
##### [Repository](https://github.com/lukas-reineke/indent-blankline.nvim)
- A plugin that provides indentation guides for Neovim. Refer to lua/plugins/indent_blankline.lua for custom settings.

### Jester
##### [Repository](https://github.com/David-Kunz/jester)
- A plugin that provides a testing framework for Neovim. Refer to lua/plugins/jester.lua for custom settings.

- #### Key Mappings
 - `<leader>rt`: Run test under the cursor
 - `<leader>rf`: Run all tests in the current file
 - `<leader>rl`: Run the last executed test
 - `<leader>dt`: Debug test under the cursor
 - `<leader>df`: Debug all tests in the current file
 - `<leader>dl`: Debug the last executed test

### Lspconfig
##### [Repository](https://github.com/neovim/nvim-lspconfig)

- A plugin that provides configurations for built-in LSP servers. Refer to lua/plugins/lspconfig.lua for custom settings.

- #### Key Mappings
  - `gD`: Go to declaration
  - `gd`: Go to definition
  - `gi`: Go to implementation
  - `<leader>rn`: Rename symbol
  - `gr`: List references
  - `fr`: Format the current buffer
  - Plus additional key mappings for working with workspace symbols and signature information. Refer to lua/plugins/lspconfig.lua and documentation for more information.

### Lspsaga
##### [Repository](https://github.com/glepnir/lspsaga.nvim)
- A plugin that provides a UI for LSP actions. Refer to lua/plugins/lspsaga.lua for custom settings.

- #### Key Mappings
 - `<leader>ca`: Code action
 - `<leader>cd`: Show diagnostics
 - `<leader>ce`: Incoming calls
 - `<leader>cq`: Outgoing calls
 - `<leader>cr`: Rename symbol
 - `<leader>ct`: Peek type definition
 - `<leader>cf`: LSP Finder
 - `<leader>ci`: Inline diagnostics
 - Refer to lua/plugins/lspsaga.lua and documentation for more information.

### Lualine
##### [Repository](https://github.com/hoob3rt/lualine.nvim)

- A plugin that provides a statusline for Neovim. Refer to lua/plugins/lualine.lua for custom settings.

### Luasnip
##### [Repository](https://github.com/L3MON4D3/LuaSnip)

- A plugin that provides a snippet engine for Neovim. Refer to lua/plugins/luasnip.lua for custom settings. It integrates with nvim-cmp. Refer to documentation for more information.

### Markdown Preview
##### [Repository](https://github.com/iamcco/markdown-preview.nvim)

- A plugin that provides a markdown preview for Neovim. Refer to lua/plugins/markdown_preview.lua for custom settings. To use this plugin, you must have Node.js and NPM installed on your system. Refer to documentation for more information.

### Mason.nvim
##### [Repository](https://github.com/williamboman/mason.nvim)

- A plugin that provides a plugin for Mason files. Refer to lua/plugins/mason.lua for custom settings. To use this plugin, you must have Node.js and NPM installed on your system. Refer to documentation for more information. :Mason command is used to run the plugin.

### Nvim-tree
##### [Repository](https://github.com/nvim-tree/nvim-tree.lua)

- A plugin that provides a file explorer for Neovim. Refer to lua/plugins/nvim_tree.lua for custom settings.

- #### Key Mappings
  - `<F3>`: Toggle the file explorer
  - Refer to lua/plugins/nvim_tree.lua and documentation for more information.

### Telescope and Telescope-fzf-native.nvim
##### [Repository](https://github.com/nvim-telescope/telescope.nvim)

- A plugin that provides a fuzzy finder for Neovim. Refer to lua/plugins/telescope.lua for custom settings. It integrates with fzf. Refer to documentation for more information.

- #### Key Mappings
  - `<leader>?`: Find recently opened files
  - `<leader><space>`: Find existing buffers
  - `<leader>/`: Fuzzy search in current buffer
  - `<leader>sf`: Search files in the current directory
  - `<leader>sh`: Search help documentation
  - `<leader>sw`: Search for word under the cursor
  - `<leader>sg`: Search for word under the cursor using live grep
  - `<leader>sd`: Search diagnostics
  - Refer to lua/plugins/telescope.lua and documentation for more information.

### Treesitter
##### [Repository](https://github.com/nvim-treesitter/nvim-treesitter)

- A plugin that provides a parser generator for Neovim. Refer to lua/plugins/treesitter.lua for custom settings.

- #### Key Mappings
  - Refer to lua/plugins/treesitter.lua and documentation for more information.

### Which-key
##### [Repository](https://github.com/folke/which-key.nvim)

- A plugin that provides a key mapping guide for Neovim. Refer to lua/plugins/which_key.lua for custom settings.

### Cursorline
##### [Repository](https://github.com/yamatsum/nvim-cursorline)

- A plugin that highlights duplicate words and current line in Neovim. Refer to lua/plugins/cursorline.lua for custom settings.

### hlslens
##### [Repository](https://github.com/kevinhwang91/nvim-hlslens)

- A plugin that improves the highlighting of search results in Neovim. Refer to lua/plugins/hlslens.lua for custom settings.

### fidget.nvim
##### [Repository](https://github.com/j-hui/fidget.nvim)

- A simple UI for notifications and LSP loading in Neovim. Refer to lua/plugins/fidget.lua for custom settings.

### nvim-neoclip
##### [Repository](https://github.com/AckslD/nvim-neoclip.lua)

- A clipboard manager for Neovim. It also stores macros. Refer to lua/plugins/neoclip.lua for custom settings.

- #### Key Mappings
  - `<leader>yy`: Open the clipboard history
  - `<leader>yq`: Open the macro history
  - Refer to lua/plugins/neoclip.lua and documentation for more information.


### cheatsheet.nvim
##### [Repository](https://github.com/sudormrfbin/cheatsheet.nvim)

- A plugin that provides a cheatsheet for Neovim. Refer to lua/plugins/cheatsheet.lua for custom settings. Type :Cheatsheet to open the cheatsheet. Refer to documentation for more information.

### scrollbar
##### [Repository](https://github.com/petertriho/nvim-scrollbar)

- A plugin that provides a scrollbar for Neovim. Refer to lua/plugins/scrollbar.lua for custom settings. Refer to documentation for more information.

### dadbod-ui
##### [Repository](https://github.com/kristijanhusak/vim-dadbod-ui?tab=readme-ov-file)

- A plugin that provides a UI for database clients in Neovim. Refer to lua/plugins/dadbod_ui.lua for custom settings. Refer to documentation for more information. :DBUI command is used to run the plugin.
- To set up DBs you need to add a file called dadbod-ui-dblist.lua in lua/plugins_secrets/ and add the following code:
```lua
return {
    dbs = {
        {
            name = "db_1_name",
            url = "db_1_url"
        },

        {
            name = "db_2_name",
            url = "db_2_url"
        }
    }
}
```

### git-messenger.vim
##### [Repository](https://github.com/rhysd/git-messenger.vim)

- A plugin that provides a Git messenger for Neovim. Refer to lua/plugins/git_messenger.lua for custom settings. Refer to documentation for more information.

- #### Key Mappings
  - `<leader>gg`: Show the commit message for the current line
  - Refer to lua/plugins/git_messenger.lua and documentation for more information.
