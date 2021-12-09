--local pid = vim.fn.getpid()
--local omnisharp_bin = "/home/fgxv/omnisharp-roslyn/run"
--local omnisharp_bin = "C:/omnisharp/OmniSharp.exe"

--local nvim_lsp = require('lspconfig')
--local util = require 'lspconfig/util'

--nvim_lsp.omnisharp.setup{
--    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
--    filetypes = { "cs"}, --,"vb" },
--    root_dir = util.root_pattern('*.csproj', '*.sln', '.git')
--    }
  -- Enable completion triggered by <c-x><c-o>
--  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

--local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
--local omnisharp_bin = "/path/to/omnisharp-repo/run"
-- on Windows
--local omnisharp_bin = "C:/omnisharp/OmniSharp.exe"
--require'lspconfig'.omnisharp.setup{
--    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
--}
