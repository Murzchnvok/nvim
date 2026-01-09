local o = vim.o

vim.g.mapleader = " "

o.number = true
o.relativenumber = true

o.cursorline = true
o.wrap = false
o.scrolloff = 10
o.sidescrolloff = 8

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smartindent = true
o.autoindent = true

o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true

o.termguicolors = true
o.signcolumn = "yes"
o.showmatch = true
o.showmode = false
o.completeopt = "menu,menuone,noselect"

o.updatetime = 300
o.autoread = true
o.autowrite = true

o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

o.splitbelow = true
o.splitright = true
o.splitkeep = "screen"

o.redrawtime = 10000
o.maxmempattern = 20000

o.fillchars = "eob: "
