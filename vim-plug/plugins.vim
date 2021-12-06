" auto-install vim-plug
if empty(glob('$HOME/AppData/Local/nvim-data/site/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$HOME/AppData/Local/nvim-data/site/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'joshdick/onedark.vim'
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
"    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'mhinz/vim-startify'
"    Plug 'puremourning/vimspector'
"    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'neovim/nvim-lspconfig'
"   Plug 'hrsh7th/nvim-compe'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'sbdchd/neoformat'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'wfxr/minimap.vim' 

"   nvim-cmp
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
