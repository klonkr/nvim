local dap = require('dap')
local utils = require('utils')
local command = ""

if utils.isLinux() then
  command = "/usr/bin/netcoredbg"
end

if utils.isWindows() then
  -- command = "C:/Users/AAVU/scoop/apps/omnisharp/current"
  command = "C:/Program Files (x86)/netcoredbg/netcoredbg.exe"
end

dap.adapters.netcoredbg = {
  type = 'executable',
  command = command,
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "netcoredbg",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        local projectname, type = utils.get_project_name()
        local path = ''
        if (type == 'csproj') then
            print('recieved csproj')
            path = '/bin/Debug/net6.0/' .. projectname .. '.dll'
        end
        if (type == 'sln') then
            path = '/' .. projectname .. '/bin/Debug/net6.0/' .. projectname .. '.dll'
            print('recieved sln')
        end

        --return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/' .. Get_project_name() .. '.dll', 'file')
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. path, 'file')
       -- return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
    end,
  },
}
dap.configurations.fsharp = {
  {
    type = "netcoredbg",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  layouts = {
      {
          elements = {
              'scopes',
              'breakpoints',
              'stacks',
              'watches',
          },
          size = 60,
          position = 'left',
      },
      {
          elements = {
              'repl',
              'console'
          },
          size = 10,
          position = 'bottom',
      },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})
