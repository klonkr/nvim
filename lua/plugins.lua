return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp stuff
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

  use {
    'nvim-treesitter/nvim-treesitter',
    commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
    run = ':TSUpdate'
  }

  use {"ellisonleao/glow.nvim"}

  use {'simrat39/rust-tools.nvim' }

  use { 'theHamsta/nvim-dap-virtual-text' }

  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

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

  use {
    "folke/twilight.nvim",
    config = function()
    require("twilight").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }

  use { 'simrat39/symbols-outline.nvim' }

--  use 'yamatsum/nvim-cursorline'
  use 'RRethy/vim-illuminate'


  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  use 'romgrk/nvim-treesitter-context'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'kevinhwang91/rnvimr'
  use 'tpope/vim-repeat'
  use 'ggandor/lightspeed.nvim'
  use { 'https://gitlab.com/yorickpeterse/nvim-window.git', as = 'nvim-window' }

  --themes
  use  { 'luisiacc/gruvbox-baby', branch = 'main'}
  use "rebelot/kanagawa.nvim"
  use 'marko-cerovac/material.nvim'
  use 'shaunsingh/nord.nvim'
  use 'navarasu/onedark.nvim'
  use 'sainnhe/gruvbox-material'
  use 'folke/tokyonight.nvim'

  use {'stevearc/dressing.nvim'}

  use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      patterns = { ".sln", ".csproj", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    end
  }

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
  -- tag = 'release' -- To use the latest release
  }

  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
