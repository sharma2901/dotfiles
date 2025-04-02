local set = vim.keymap.set
-- Clear search and stop snippet on escape
set("n", "<Esc>", ":nohl<CR>", { silent = true })
set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in float" })
set("i", ";'", "<Esc>", { desc = "Go out of insert mode" })
set({ "i", "n", "s", "x" }, ";;", "<Cmd>w<CR><Esc>", { desc = "Save File" })
set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- commenting
set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })
-- lazy
set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostic in float" })

-- better up/down
set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

set("n", "<leader>cf", function()
  require("conform").format({
    lsp_format = "fallback",
  })
end, { desc = "Format current file", silent = true })
