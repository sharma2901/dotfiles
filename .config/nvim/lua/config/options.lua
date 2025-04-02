--  -- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.markdown_recommended_style = 0
vim.g.have_nerd_font = true
vim.g.autoformat = true -- LazyVim auto format
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true
opt.mouse = "a" -- Enable mouse mode, can be useful for resizing splits for example!
opt.showmode = false -- Don't show the mode, since it's already in the status line

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)

opt.breakindent = true -- Enable break indent
opt.undofile = true -- Save undo history
opt.undolevels = 10000
opt.swapfile = false
opt.backup = false
opt.writebackup = false
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes" -- Keep signcolumn on by default
opt.updatetime = 250 -- Decrease update time
opt.timeoutlen = 300 -- Decrease mapped sequence wait time

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split" -- Preview substitutions live, as you type!
opt.cursorline = true -- Show which line your cursor is on
opt.confirm = true
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Size of an indent
opt.smarttab = true
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.smoothscroll = true
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.scrolloff = 10
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldtext = ""
opt.foldlevel = 99
opt.foldlevelstart = 1
opt.foldenable = false
