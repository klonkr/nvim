vim.g.mapleader = ' '
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd[[colorscheme nord]]

vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false

-- Load the colorscheme
require('nord').set()
