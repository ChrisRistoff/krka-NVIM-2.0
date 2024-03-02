--[[ 
	dap.adapters.jest = {
		type = 'executable',
  		command = '/home/krasyo/programming/fun-katas/node_modules/.bin/jest', -- Replace with the full path you obtained in step 1.
  		args = { '--runInBand' }, -- Optional: Add any Jest CLI options you need.
  		cwd = vim.fn.getcwd(),
	}


      	dap.adapters.node2 = {
        	type = 'executable',
        	command = 'node',
        	args = {'/home/krasyo/debug_adapters/vscode-node-debug2/src/nodeDebug.js'},
      	} ]]


--[[  	{ -- Friendly Snippets:
        "rafamadriz/friendly-snippets",
        after = "L3MON4D3/LuaSnip",  -- Ensure LuaSnip is loaded before
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()

        -- Load snippets from snippets directory
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath('config') .. "/my_snippets" } })

        end,
    	}, ]]



	--debugger
	-- {'puremourning/vimspector'},



-- Copilot only one word at a time in insert mode
--[[ 
function _G.SuggestOneWord()
    local suggestion = vim.fn["copilot#Accept"]("")
    local bar = vim.fn["copilot#TextQueuedForInsertion"]()
    local word = string.match(bar, "[%w_]+")
    local nc = string.sub(bar, string.len(word) + 1, string.len(word) + 1)
    if nc == " " or nc == "." or nc == "[" or nc == "]" or nc == "=" or nc == "'" or nc == "(" or nc == ")" then
        return word .. nc
    else
        return word
    end
end
 ]]
--[[ 
function _G.SuggestOneWord()
    local suggestion = vim.fn["copilot#Accept"]("")
    local bar = vim.fn["copilot#TextQueuedForInsertion"]()
    local word = string.match(bar, "[%w_]+") or ""
    local symbol = string.match(bar, "[%p%s]+", string.len(word) + 1) or ""
    local combined = word .. symbol

    -- Check if the string after the word contains a word character
    local nextWordCharacter = string.match(symbol, "[%w_]")
    if nextWordCharacter then
        -- If it does, truncate the symbols to the first word character
        combined = string.match(combined, ".*[%w_]")
    end

    return combined
end
 ]]

-- keybindings for SuggestOneWord() function above
--vim.keymap.set(0, 'i', '<C-l>', 'v:lua.SuggestOneWord()', {expr = true, silent = true})
-- vim.api.nvim_set_keymap('i', '<C-l>', 'v:lua.SuggestOneWord()', {expr = true, silent = true})


