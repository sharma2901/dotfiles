return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "[F]ind [F]iles",
    },
    {
      "<leader><leader>",
      function()
        require("fzf-lua").files()
      end,
      desc = "[F]ind [F]iles",
    },
    {
      "<leader>fF",
      function()
        require("fzf-lua").files({ resume = true })
      end,
      desc = "Resume [F]ind",
    },
    {
      "<leader>sg",
      function()
        require("fzf-lua").grep_visual()
      end,
      mode = { "x" },
      desc = "[S]earch [G]rep",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "[F]id [C]onfig",
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").oldfiles()
      end,
      desc = "[F]ind [R]ecent",
    },
    {
      "<leader>bl",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "[L]ist [B]uffer",
    },
    {
      "<leader>sg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "[S]earch [G]rep",
    },
    {
      "<leader>sw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "[S]earch [W]ord under the cursor",
    },
    {
      "<leader>sW",
      function()
        require("fzf-lua").grep_cWORD()
      end,
      desc = "[S]earch [W]ORD under the cursor",
    },
    {
      "<leader>fp",
      function()
        require("fzf-lua").grep_project()
      end,
      desc = "[F]ind in [P]roject",
    },
    {
      "<leader>sb",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "[S]earch in current [B]uffer",
    },
    {
      "<leader>sB",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "[S]earch [B]uiltin",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").helptags()
      end,
      desc = "[F]ind [H]elp",
    },
    {
      "<leader>fm",
      function()
        require("fzf-lua").marks()
      end,
      desc = "[F]ind [M]arks",
    },
    {
      "<leader>fk",
      function()
        require("fzf-lua").keymaps()
      end,
      desc = "[F]ind [K]eymaps",
    },
  },
}
