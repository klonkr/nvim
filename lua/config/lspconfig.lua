local utils = require('utils')
local library = {}

local path = vim.split(package.path, ";")

local lua_bin = ''

-- this is the ONLY correct way to setup your path
if utils.isWindows() then
    table.insert(path, "lua\\?.lua")
    table.insert(path, "lua\\?\\init.lua")
else
    table.insert(path, "lua/?.lua")
    table.insert(path, "lua/?/init.lua")
end

-- add plugins
-- if you're not using packer, then you might need to change the paths below
if utils.isWindows() then
    library = {
        [vim.fn.expand('$VIMRUNTIME\\lua')] = true,
        [vim.fn.expand('$VIMRUNTIME\\lua\\vim\\lsp')] = true
    }
else
    library = {
        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
    }
end

local system_name
if vim.fn.has("mac") == 1 then
    system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
    system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
    system_name = "Windows"
else
    print("Unsupported system for sumneko")
end

--local sumneko_root_path = "C:/Users/yashg/bin/lua-language-server"

-- LuaFormatter off
local sumneko_binary
if utils.isWindows() then
  lua_bin = "C:/lua/bin/lua-language-server.exe"
  sumneko_binary = "C:/lua/bin/main.lua"
elseif utils.isLinux() then
  lua_bin = "lua-language-server"
  sumneko_binary = "/home/fgxv/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/main.lua"
else
    print("Unsupported system for sumneko")
end
-- LuaFormatter on

require'lspconfig'.sumneko_lua.setup{
    cmd = {lua_bin, "-E", sumneko_binary }, --"/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
                -- Setup your lua path
                path = path
            },
            completion = {callSnippet = "Both"},
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {"vim"}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = library,
                maxPreload = 2000,
                preloadFileSize = 50000
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {enable = false}
        }
    }
}

require'lspconfig'.rust_analyzer.setup{}

local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
