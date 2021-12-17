local dap = require('dap')
local command = ""

function get_project_name()
 -- vim.fn.expand('%')
  --api.nvim_command("echo vim.fn.expand('%')")
--  api.nvim_command('echo "hello world"')
  local path = vim.fn.getcwd()
  local files = scandir(path)
  local projname
  for key, value in pairs(files) do
    if string.find(value, ".csproj") then
      local heh = string.find(value, ".csproj")
      projname = string.sub(value, 0, heh - 1)
      print(projname)
      print('found proj!!!')
    end
    print(key, " -- ", value)
  end
  return projname
end

if (vim.loop.os_uname().sysname == 'Linux') then
  command = "/usr/bin/netcoredbg"
end

if (vim.loop.os_uname().sysname == 'Windows_NT') then
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
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/' .. get_project_name() .. '.dll', 'file')
       -- return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
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
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
   --   { id = "watches", size = 00.25 },
    },
    size = 60,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
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
