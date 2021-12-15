local wk = require('whichkey_setup')

local keymap = {
    
    ['<CR>'] = {'@q', 'macro q'}, -- setting a special key
    t = {
      name = '+telescope',
      f = {
        name = '+find',
        f = 'Files',
        b = 'Buffers',
        g = 'Live grep',
        h = 'Help Tags'
      },
      b = 'file browser',
      g = {
        name = '+git',
        c = 'commits',
        b = 'commits in buffer',
        r = 'branches',
        s = 'status',
        t = 'stashes'
      }
    },
    l = {
      name = '+lsp',
      s = {
        name = '+symbols',
        d = 'document',
        w = 'workspace',
        y = 'dYnamic'
      },
      a = 'code actions',
      d = 'diagnostics',
      i = 'implementations',
      e = 'definitions',
      t = 'type definitions',
      r = 'references'
    }
}

wk.register_keymap('leader', keymap)
