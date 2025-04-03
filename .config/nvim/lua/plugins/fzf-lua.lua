return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    oldfiles = { include_current_session = true },
    previwers = {
      builtin = {
        syntax_limit_b = 1024 * 100, --100KB
      },
    },
  },
  keys = {
    {
      "<leader>,",
      "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    {
      "<leader>/",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Grep",
    },
    { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "[F]ind [F]iles",
    },
    {
      "<leader><space>",
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
    { "<leader>fb", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
    -- git
    { "<leader>gc", "<cmd>FzfLua git_commits<CR>", desc = "Commits" },
    { "<leader>gs", "<cmd>FzfLua git_status<CR>", desc = "Status" },
    -- search
    { '<leader>s"', "<cmd>FzfLua registers<cr>", desc = "Registers" },
    { "<leader>sa", "<cmd>FzfLua autocmds<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
    { "<leader>sd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
    { "<leader>sD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
    { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
    { "<leader>sH", "<cmd>FzfLua highlights<cr>", desc = "Search Highlight Groups" },
    { "<leader>sj", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
    { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
    { "<leader>sl", "<cmd>FzfLua loclist<cr>", desc = "Location List" },
    { "<leader>sM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
    { "<leader>sm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
    { "<leader>sR", "<cmd>FzfLua resume<cr>", desc = "Resume" },
    { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix List" },
    {
      "<leader>ss",
      function()
        require("fzf-lua").lsp_document_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol",
    },
    {
      "<leader>sS",
      function()
        require("fzf-lua").lsp_live_workspace_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol (Workspace)",
    },
  },
}
