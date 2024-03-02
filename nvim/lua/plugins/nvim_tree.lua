local nvim_tree_config = {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        ignore = true
      }
    })
  end
}

return nvim_tree_config
