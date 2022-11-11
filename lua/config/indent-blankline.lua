vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#9a6ba3 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#27b1de gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#477de4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#d3a867 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#78ce60 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
    },
}
