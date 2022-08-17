return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'echasnovski/mini.nvim', branch = 'stable' }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use 'onsails/diaglist.nvim'
  use {'jdhao/whitespace.nvim', event = 'VimEnter'}
  use { 'tami5/lspsaga.nvim' }  -- nightly
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

  use { 'skywind3000/asynctasks.vim',
      requires = { 'skywind3000/asyncrun.vim' },
  }

  use 'natecraddock/workspaces.nvim'
  use 'neovim/nvim-lspconfig'
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v1.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
    config = function ()
      -- See ":help neo-tree-highlights" for a list of available highlight groups
      vim.cmd([[
        hi link NeoTreeDirectoryName Directory
        hi link NeoTreeDirectoryIcon NeoTreeDirectoryName
      ]])
    end
  }
  use { 'https://gitlab.com/yorickpeterse/nvim-window.git', as = 'nvim-window' }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'nvim-treesitter/nvim-treesitter',
    commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
    run = ':TSUpdate'
  }
  use { 'theHamsta/nvim-dap-virtual-text' }


  use { "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"}
    }

  use { 'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'dcampos/nvim-snippy',
  'dcampos/cmp-snippy',
  'honza/vim-snippets',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

 use 'romgrk/nvim-treesitter-context'

  use 'tpope/vim-repeat'
  use 'ggandor/lightspeed.nvim'
  use 'folke/tokyonight.nvim'

  use {
    'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
  }

  -- terminal
  use "numToStr/FTerm.nvim"
  use {"akinsho/toggleterm.nvim"}

-- git stuff
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}
end)
