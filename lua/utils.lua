function scandir(directory)
  local i, t, popen = 0, {}, io.popen
  local pfile = popen('ls -a "'..directory..'"')
  for filename in pfile:lines() do
    i = i + 1
    t[i] = filename
  end
  pfile.close()
  return t
 end

function get_project_name()
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
