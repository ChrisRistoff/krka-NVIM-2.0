return {
    { 'luisiacc/gruvbox-baby',
        config = function()
            vim.cmd[[autocmd VimEnter * colorscheme gruvbox-baby]]
            vim.g.gruvbox_baby_background_color = 'dark'  -- Or 'dark'
            vim.g.gruvbox_baby_transparent_mode = true
        end
    },
}
