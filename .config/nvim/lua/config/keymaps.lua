vim.keymap.del({ "i", "n", "s", "x" }, "<C-S>")
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
vim.keymap.set({ "i", "n", "s", "x" }, ";;", "<Cmd>w<CR><Esc>", { desc = "Save file and go to normal mode" })
