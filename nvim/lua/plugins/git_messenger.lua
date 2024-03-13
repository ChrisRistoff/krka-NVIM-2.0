return {
    {
        'rhysd/git-messenger.vim',
        config = function()
            vim.g.git_messenger_floating_win_opts = { border = 'single' }
            vim.g.git_messenger_popup_content_margins = false
            vim.g.git_messenger_always_into_popup = true
            vim.g.git_messenger_max_popup_height = 40
            vim.g.git_messenger_max_popup_width = 80
        end
    }
}
