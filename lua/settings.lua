vim.g.mapleader = ' '
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd[[colorscheme gruvbox-material]]

--vim.g.nord_contrast = true
--vim.g.nord_borders = false
--vim.g.nord_disable_background = false
--vim.g.nord_italic = false

-- Load the colorscheme
--require('nord').set()
--require('onedark').setup()

local o = vim.o
local bo = vim.bo
local wo = vim.wo

--o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
bo.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt='menuone,noinsert,noselect'
bo.autoindent = true
bo.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false
