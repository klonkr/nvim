local utils = {}

function utils.restoreAndBuild()
  utils.restore()
  utils.build()
end

function utils.restore()
  local handle = io.popen("dotnet restore")
  local result = handle:read("*a")
  print(result)
  handle:close()
end

function utils.build()
  local handle = io.popen("dotnet build")
  local result = handle:read("*a")
  print(result)
  handle:close()
end

function utils.isLinux()
  if (vim.loop.os_uname().sysname == 'Linux') then
    return true
  else
    return false
  end
end

function utils.isWindows()
  if (vim.loop.os_uname().sysname == 'Windows_NT') then
    return true
  else
    return false
  end
end

function utils.scandir(directory)
  local i, t, popen = 0, {}, io.popen
  local pfile
  if utils.isLinux() then
    pfile = popen('ls "'..directory..'"')
  end
  if utils.isWindows() then
    pfile = popen('dir ' .. directory .. ' /b')
  end
  for filename in pfile:lines() do
    i = i + 1
    t[i] = filename
  end
  pfile.close()
  return t
 end

function utils.get_project_name()
  local path = vim.fn.getcwd()
  local files = utils.scandir(path)
  local projname = ''
  local type = ''
  for key, value in pairs(files) do
    if string.find(value, ".sln") then
      local heh = string.find(value, ".sln")
      projname = string.sub(value, 0, heh - 1)
      type = 'sln'
      print('found sln!!!')
    end
    if string.find(value, ".csproj") then
      local heh = string.find(value, ".csproj")
      projname = string.sub(value, 0, heh - 1)
      type = 'csproj'
      print('found proj!!!')
    end
  end
  return projname, type
end

return utils
