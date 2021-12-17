vim.g.mapleader = ' '
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd[[colorscheme tokyonight]]

vim.g.dashboard_default_executive = 'telescope'

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
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false

vim.g.symbols_outline = {
  width = 35
}

--vim.api.nvim_exec([[ autocmd FileType lua tabstop=2 softtabstop=2 shiftwidth=2]], false)
--vim.api.nvim_exec([[ autocmd FileType cs tabstop=4 softtabstop=4 shiftwidth=4]], false)
