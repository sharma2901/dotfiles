return {
  "Wansmer/treesj",
  keys = {
    {
      "<leader>j",
      function()
        require("treesj").toggle()
      end,
      desc = "Split/Join",
    },
    {
      "<leader>J",
      function()
        require("treesj").toggle({ split = { recursive = true } })
      end,
      desc = "Split/Join (Recursive)",
    },
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
  end,
}
