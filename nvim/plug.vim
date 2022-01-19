if has("nvim")
  let g:plug_home = stdpath("data") . "/plugged"
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'groenewege/vim-less', { 'for': 'less'}
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee'}

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'onsails/lspkind-nvim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins' }
  Plug 'kyazdani42/nvim-web-devicons'
endif

call plug#end()
