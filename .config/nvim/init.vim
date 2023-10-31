call plug#begin('~/.vim/plugged')

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ThePrimeagen/harpoon'

" Git 
Plug 'tpope/vim-fugitive' 

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'petertriho/cmp-git'
Plug 'hashivim/vim-terraform'
" For vsnip user.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" formatting
Plug 'tpope/vim-surround'
" Plug 'sbdchd/neoformat'
Plug 'NoahTheDuke/vim-just'
Plug 'EdenEast/nightfox.nvim'
" Plug 'feline-nvim/feline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'unblevable/quick-scope'

" other
Plug 'folke/which-key.nvim'
call plug#end()
