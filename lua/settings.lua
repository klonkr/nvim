vim.g.mapleader = ' '
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd[[colorscheme tokyonight]]
vim.api.nvim_exec([[  autocmd CursorHold  <buffer> lua vim.lsp.buf.hover() ]], false)

vim.cmd[[command! -count=1 DotnetBuild  lua require'toggleterm'.exec("dotnet build",    <count>, 12)]]
vim.cmd[[command! -count=1 DotnetTest  lua require'toggleterm'.exec("dotnet test",    <count>, 12)]]

vim.g.dashboard_default_executive = 'telescope'

local o = vim.o
local bo = vim.bo
local wo = vim.wo

o.guifont = [[FiraCode NF:h10]]
o.clipboard = 'unnamedplus'
o.termguicolors = true
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
vim.g.tokyonight_style = "night"

vim.cmd[[language en]]
