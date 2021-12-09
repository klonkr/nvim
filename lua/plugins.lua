return require('packer').startup(function()
	-- lsp stuff
	use 'neovim/nvim-lspconfig'
	use 'tami5/lspsaga.nvim' 
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

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
	use 'shaunsingh/nord.nvim'
	use 'kevinhwang91/rnvimr'
	use 'tpope/vim-repeat'
	use 'ggandor/lightspeed.nvim'
	use 'https://gitlab.com/yorickpeterse/nvim-window.git'
end)
