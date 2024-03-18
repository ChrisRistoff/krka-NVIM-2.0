-- https://github.com/nvim-tree/nvim-tree.lua

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            git = {
                ignore = true
            },
        })
    end
}
