set t_Co=256
set bg=dark
set paste
syntax on
"set nu
set rnu
set tabstop=4
"set cursorline
set incsearch
set showmatch
set history=100
set wildmenu
set wrap "Wrap lines
"set mouse=nicr

" Better navigation for wrapped lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Shell check
map <leader>p :!clear && shellcheck %<CR>

" Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
" Mappings for managing windows
map <leader>sv :vsplit<cr>
map <leader>sh :split<cr>
"map <C-d> :hide<cr>

nnoremap <Tab> %
" Better way for moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-t> :NERDTreeToggle<CR>
"
"" Close if last buffer
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ansible Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.yml set filetype=yaml.ansible
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'b'
let g:ansible_extra_keywords_highlight = 1

" FZF
map <C-f> :Files<CR>
map <C-g> :GFiles<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'pearofducks/ansible-vim'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'unblevable/quick-scope'
call plug#end()
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
"let g:airline_powerline_fonts = 1
