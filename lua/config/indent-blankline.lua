-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#24283b gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1d202f gui=nocombine]]
--
-- require("indent_blankline").setup {
--     -- for example, context is off by default, use this to turn it on
--     show_current_context = true,
--     show_current_context_start = true,
--     char = "",
--     char_highlight_list = {
--         "IndentBlanklineIndent1",
--         "IndentBlanklineIndent2",
--     },
--     space_char_highlight_list = {
--         "IndentBlanklineIndent1",
--         "IndentBlanklineIndent2",
--     },
--     show_trailing_blankline_indent = false,
-- }
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
--
-- require("indent_blankline").setup {
--     show_end_of_line = true,
--     space_char_blankline = " ",
-- }
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
