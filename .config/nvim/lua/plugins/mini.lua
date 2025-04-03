return {
  { "echasnovski/mini.align", opts = {} },
  -- { "echasnovski/mini.tabline", opts = {} },
  { "echasnovski/mini.ai", opts = {} },
  { "echasnovski/mini.jump", opts = {} },
  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "<leader>bd",
        function()
          require("mini.bufremove").delete(0, false)
        end,
        desc = "Delete Buffer",
      },
      {
        "<leader>bD",
        function()
          require("mini.bufremove").delete(0, true)
        end,
        desc = "Delete Buffer (Force)",
      },
    },
  },
  { "echasnovski/mini.hipatterns", opts = {} },
  -- { "echasnovski/mini.splitjoin", opts = {} },
  { "echasnovski/mini.move", opts = {} },
  { "echasnovski/mini.pairs", opts = {} },
  { "echasnovski/mini.statusline", opts = {} },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    },
  },
  { "echasnovski/mini.trailspace", opts = {} },
}
