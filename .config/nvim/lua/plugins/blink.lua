return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    "nvim-tree/nvim-web-devicons",
  },
  version = "1.*",
  opts = {
    -- keymap
    keymap = { preset = "super-tab" },
    -- appearance
    appearance = {
      nerd_font_variant = "mono",
    },
    -- completion
    completion = {
      accept = { auto_brackets = { enabled = false } },
      menu = {
        border = "single",
      },
      documentation = { auto_show = true, window = { border = "single" } },
      ghost_text = { enabled = false },
    },
    -- signature
    signature = { enabled = true, window = { border = "single" } },
    -- cmd
    cmdline = { enabled = false },
    -- sources
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    -- fuzzy
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
