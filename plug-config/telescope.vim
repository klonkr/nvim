" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
" nnoremap <leader>ff>

nnoremap <Leader>ca :lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <Leader>dd :lua require'telescope.builtin'.lsp_definitions(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <Leader>ii :lua require'telescope.builtin'.lsp_implementations(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <Leader>td :lua require'telescope.builtin'.lsp_type_definitions(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <Leader> :lua require'telescope.builtin'.(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <Leader> :lua require'telescope.builtin'.builtin.treesitter(require('telescope.themes').get_dropdown({}))<cr>
"nnoremap <leader>pp :lua require'builtin.lsp_code_actions'.planets{}
"

lua <<EOF
        require('telescope').setup{ defaults = { file_ignore_patterns = {"bin/*", "obj/*", ".git/*"} } }
EOF
