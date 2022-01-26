return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use 'tami5/lspsaga.nvim' 
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {"ellisonleao/glow.nvim"}

  use 'simrat39/rust-tools.nvim'

  use 'theHamsta/nvim-dap-virtual-text'
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


  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use 'glepnir/dashboard-nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'dcampos/nvim-snippy'
  use 'dcampos/cmp-snippy'
  use 'honza/vim-snippets'

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

  use 'simrat39/symbols-outline.nvim'

--  use 'yamatsum/nvim-cursorline'
  use 'RRethy/vim-illuminate'


  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  use 'romgrk/nvim-treesitter-context'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'kevinhwang91/rnvimr'
  use 'tpope/vim-repeat'
  use 'ggandor/lightspeed.nvim'
  use 'https://gitlab.com/yorickpeterse/nvim-window.git'
  
  --themes
  use 'shaunsingh/nord.nvim'
  use 'navarasu/onedark.nvim'
  use 'sainnhe/gruvbox-material'
  use 'folke/tokyonight.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

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

  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
end)
