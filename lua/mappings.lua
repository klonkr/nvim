local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Mappings.
local opts = { noremap=true, silent=true }

map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
map('n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- tree
map('n', '<leader>tt', '<cmd>NeoTreeFloatToggle<cr>', opts)

-- telescope stuff
-- find files
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
map('n', '<leader>fr', "<cmd>lua require('telescope.builtin').file_browser(require('telescope.themes').get_dropdown({}))<cr>")

-- git
map('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<cr>")
map('n', '<leader>gc', "<cmd>lua require('telescope.builtin').git_commits()<cr>")
map('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_bcommits()<cr>")
map('n', '<leader>gr', "<cmd>lua require('telescope.builtin').git_branches()<cr>")
map('n', '<leader>gt', "<cmd>lua require('telescope.builtin').git_stash()<cr>")

--map('n' "<C-w>", "<cmd>RnvimrToggle<cr>", opts)
map('n', '<leader>w', "<cmd>lua require('nvim-window').pick()<cr>", { silent = true, noremap = true })

map('n', '<leader>v', "<cmd>NeoTreeFloatToggle<cr>")
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
map('n', '<leader>ca', "<cmd>lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_dropdown({}))<cr>", opts)
map('n', '<leader>cd', "<cmd>lua require'telescope.builtin'.diagnostics()<cr>", opts)
map('n', '<leader>ci', "<cmd>lua require'telescope.builtin'.lsp_implementations(require('telescope.themes').get_dropdown({layout_config={width=0.9, height=0.2}}))<cr>", opts)
map('n', '<leader>ce', "<cmd>lua require'telescope.builtin'.lsp_definitions()<cr>", opts)
map('n', '<leader>ct', "<cmd>lua require'telescope.builtin'.lsp_type_definitions()<cr>", opts)

-- build and stuff
map('n', '<F2>', "<cmd>lua require'utils'.restore()<cr>", opts)
map('n', '<F3>', "<cmd>lua require'utils'.build()<cr>", opts)
map('n', '<F4>', "<cmd>lua require'utils'.restoreAndBuild()<cr>", opts)

-- system wide copy paste
map('n', 'cp', '"*p"')

map('n', '<A-i>', '<CMD>ToggleTerm<CR>', opts)
map('n', '<C-x>', '<CMD>ToggleTerm<CR>', opts)
map('t', '<A-i>', '<C-\\><C-n><CMD>ToggleTerm<CR>', opts)
map('t', '<C-x>', '<C-\\><C-n><CMD>ToggleTerm<CR>', opts)
map("n", "<leader>gl", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- Close buffer
map('n', '<leader>bc', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
map('n', '<leader>bc', ':BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bl', ':BufferCloseBuffersLeft<CR>', opts)
map('n', '<leader>br', ':BufferCloseBuffersRight<CR>', opts)
-- Magic buffer-picking mode
map('n', '<leader>bp', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<space>bn', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<space>bl', ':BufferOrderByLanguage<CR>', opts)
