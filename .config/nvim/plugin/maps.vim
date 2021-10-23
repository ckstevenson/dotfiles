let mapleader = " "

" Better navigation for wrapped lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Shell check
"map <leader>p :!clear && shellcheck %<CR>

" Enable and disable auto comment
"map <leader>c :setlocal formatoptions-=cro<CR>
"map <leader>C :setlocal formatoptions=cro<CR>

nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Close the current buffer
map <leader>bd :bd<cr>
" Close all the buffers
"map <leader>ba :bufdo bd<cr>
"map <leader>l :bnext<cr>
"map <leader>h :bprevious<cr>
"map <C-l> :bnext<cr>
"map <C-h> :bprevious<cr>

" Useful mappings for managing tabs
"map <leader>tn :tabnew<cr>
"map <leader>to :tabonly<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove 

" Mappings for managing windows
map <leader>sv :vsplit<cr>
map <leader>sh :split<cr>
"map <C-d> :hide<cr>
"nnoremap <Tab> %

" Better way for moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Spelling
"map <leader>ss :setlocal spell!<cr>
"map <leader>sn ]s
"map <leader>sp [s
"map <leader>sa zg
"map <leader>s? z=