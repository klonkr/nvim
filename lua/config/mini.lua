require('mini.sessions').setup({ directory = 'C:/nvim/misc/sessions' })
--require('mini.starter').setup()

vim.defer_fn(function()
  require('mini.comment').setup()
  require('mini.cursorword').setup()
  require('mini.doc').setup()
  require('mini.jump').setup()
  require('mini.jump2d').setup()
  require('mini.misc').setup()
  require('mini.pairs').setup({ modes = { insert = true, command = true, terminal = true } })
  require('mini.surround').setup({
    custom_surroundings = {
      s = {
        input = { find = '%[%[.-%]%]', extract = '^(..).*(..)$' },
        output = { left = '[[', right = ']]' },
      },
    },
    search_method = 'cover_or_next',
  })
  require('mini.trailspace').setup()
end, 0)
