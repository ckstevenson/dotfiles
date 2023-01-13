call plug#begin('~/.vim/plugged')
" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" tf
Plug 'hashivim/vim-terraform'
"Plug 'juliosueiras/vim-terraform-completion'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'unblevable/quick-scope'
Plug 'vim-syntastic/syntastic'
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
" For vsnip user.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" formatting
" Plug 'sbdchd/neoformat'
Plug 'NoahTheDuke/vim-just'
Plug 'ThePrimeagen/harpoon'
Plug 'EdenEast/nightfox.nvim'
call plug#end()
colorscheme carbonfox
