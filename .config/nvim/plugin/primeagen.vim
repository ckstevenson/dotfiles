" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files theme=dropdown<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
require("telescope").load_extension('harpoon')
EOF

" harpoon
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>fm :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>n :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>p :lua require("harpoon.ui").nav_prev()<CR>
nnoremap <leader><enter> :lua require("harpoon.term").gotoTerminal(1)<CR>
