local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Mappings.
local opts = { noremap=true, silent=true }
map("n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
map("n", "cg", "<cmd>Lspsaga lsp_finder<cr>", {silent = true, noremap = true})
map("n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
map("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
map("n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
map("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

map('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format( async = true )<CR>', opts)

map('n', '<space>dw', "<cmd>lua require('diaglist').open_all_diagnostics()<cr>")
map('n', '<space>d0', "<cmd>lua require('diaglist').open_buffer_diagnostics()<cr>")

-- window picker
map('n', 'åå', "<cmd>lua require('nvim-window').pick()<cr>", { silent = true, noremap = true })
map('n', '<leader>v', "<cmd>Neotree float<cr>", opts)

-- telescope stuff
-- find files
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical'})<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep({layout_strategy='vertical'})<cr>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers({layout_strategy='vertical'})<cr>")
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags({layout_strategy='vertical'})<cr>")

-- git
map('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status({layout_strategy='vertical'})<cr>")
map('n', '<leader>gc', "<cmd>lua require('telescope.builtin').git_commits({layout_strategy='vertical'})<cr>")
map('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_bcommits({layout_strategy='vertical'})<cr>")
map('n', '<leader>gr', "<cmd>lua require('telescope.builtin').git_branches({layout_strategy='vertical'})<cr>")
map('n', '<leader>gt', "<cmd>lua require('telescope.builtin').git_stash({layout_strategy='vertical'})<cr>")

map('n', '<leader>tr', "<cmd>lua require('telescope.builtin').resume({layout_strategy='vertical'})<cr>")
map('n', '<leader>tk', "<cmd>lua require('telescope.builtin').keymaps()<cr>")
map('n', '<leader>ts', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({layout_strategy='vertical'})<cr>")

--dap
map('n', '<F9>', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
map('n', '<leader>dtd', "<cmd>lua require'dapui'.toggle()<cr>", opts)
map('n', '<F5>', "<cmd>lua require'dap'.continue()<cr>", opts)
map('n', '<F10>', "<cmd>lua require'dap'.step_over()<cr>", opts)
map('n', '<F11>', "<cmd>lua require'dap'.step_into()<cr>", opts)
map('n', '<S-F11>', "<cmd>lua require'dap'.step_into()<cr>", opts)

-- lsp stuff
map('n', '<leader>cr', "<cmd>lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({layout_config={width=0.9, height=0.2}}))<cr>", opts)
map('n', '<leader>sd', "<cmd>lua require'telescope.builtin'.lsp_document_symbols()<cr>", opts)
map('n', '<leader>sw', "<cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<cr>", opts)
map('n', '<leader>sy', "<cmd>lua require'telescope.builtin'.lsp_dynamic_workspace_symbols()<cr>", opts)
map('n', '<leader>cd', "<cmd>lua require'telescope.builtin'.diagnostics()<cr>", opts)

-- build and stuff
map('n', '<F2>', '<CMD>DotnetBuild<CR>', opts)
map('n', '<F3>', '<CMD>DotnetTest<CR>', opts)

map("n", "<leader>gl", "<cmd>Lspsaga open_floaterm lazygit<CR>", {noremap = true, silent = true})
map("t", "<leader>gl", "<cmd>Lspsaga close_floaterm<CR>", {noremap = true, silent = true})

-- Close buffer
map('n', '<leader>bc', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
map('n', '<leader>ba', ':BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bl', ':BufferCloseBuffersLeft<CR>', opts)
map('n', '<leader>br', ':BufferCloseBuffersRight<CR>', opts)
-- Magic buffer-picking mode
map('n', '<leader>bp', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<space>bn', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<space>bl', ':BufferOrderByLanguage<CR>', opts)

