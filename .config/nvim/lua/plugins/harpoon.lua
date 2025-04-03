return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    settings = {
      save_on_toggle = true,
      save_on_change = true,
      excluded_filetypes = { "harpoon" },
      mark_branch = true,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>hx",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Mark file to Harpoon",
      },
      {
        "<leader>h",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<leader>hn",
        function()
          require("harpoon.ui").nav_next()
        end,
        desc = "Harpoon navigate to next mark",
      },
      {
        "<leader>hp",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "Harpoon navigate to previous mark",
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon.ui").nav_file(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end
    return keys
  end,
}
