vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
vim.keymap.set({ "i", "n", "s", "x" }, ";;", "<Cmd>w<CR><Esc>", { desc = "Save File" })
vim.keymap.set({ "i" }, ";'", "<Esc>", { desc = "ESC (go to normal mode)" })
vim.keymap.set({ "n" }, "<space>r", "<Cmd>source %<CR>", { desc = "Reload config" })
vim.keymap.set("n", "<C-k>", "<cmd>TwoslashQueriesInspect<CR>", { desc = "Insert TwoSlash comment" })
vim.keymap.set({ "n", "i", "x", "s" }, "<leader>xf", function()
  vim.diagnostic.open_float()
end, { desc = "Open Diagnostic in float" })
