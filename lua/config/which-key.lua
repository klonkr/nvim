local wk = require('whichkey_setup')

local keymap = {
    
    w = {':w!<CR>', 'save file'}, -- set a single command and text
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
      g = {
        name = '+git',
        c = 'commits',
        b = 'commits in buffer',
        r = 'branches',
        s = 'status',
        t = 'stashes'
      }
    },
}

wk.register_keymap('leader', keymap)
