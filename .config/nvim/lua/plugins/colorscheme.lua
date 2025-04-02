return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: configure the theme
    require("tokyonight").setup({
      style = "moon", -- Choose: "storm", "moon", "night", or "day"
      transparent = true,
      terminal_colors = true,
    })

    -- Set the colorscheme
    vim.cmd("colorscheme tokyonight")
  end,
}
