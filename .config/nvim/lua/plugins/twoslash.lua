return {
  "marilari88/twoslash-queries.nvim",
  dependecies = {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig")["tsserver"].setup({
        on_attach = function(client, bufnr)
          require("twoslash-queries").attach(client, bufnr)
        end,
      })
    end,
  },
  opts = {},
  keys = {
    { "<M-k>", "<cmd>TwoslashQueriesInspect<CR>", desc = "Insert TwoSlash Comment" },
  },
}
