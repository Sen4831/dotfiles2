vim.g.mapleader = " "
vim.g.autoformat = true
vim.g.terminal_emulator = "zsh"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0

vim.g.formatoptions = "qrn1"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_update_cwd = 0

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.signcolumn = "number"
vim.opt.statuscolumn = "%s %l %r "

-- Tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.softtabstop = 2

-- Set listchars
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "→ " }

-- Line Wrapping
vim.opt.wrap = false

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Cursor Line
vim.opt.cursorline = true
vim.opt.cursorlineopt ="both"

-- Mouse
vim.opt.mouse = ""

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Shorter messages
vim.opt.shortmess:append("c")

-- Split Windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Consider - as part of keyword
vim.opt.iskeyword:append("-")

-- Folding
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.opt.scrolloff = 8
vim.opt.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"

