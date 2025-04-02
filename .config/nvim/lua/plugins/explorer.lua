return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})
  end,
  keys = {
    { "<leader>e", "<Cmd>NvimTreeToggle<CR>", desc = "Toggle File [E]xplorer", silent = true, noremap = true },
  },
}
