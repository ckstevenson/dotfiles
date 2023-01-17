--
--require("telescope").load_extension('harpoon')
--
--" harpoon
--nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
--nnoremap <leader>fm :lua require("harpoon.ui").toggle_quick_menu()<CR>
--nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
--nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
--nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
--nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
--nnoremap <leader>n :lua require("harpoon.ui").nav_next()<CR>
--nnoremap <leader>p :lua require("harpoon.ui").nav_prev()<CR>
--nnoremap <leader><enter> :lua require("harpoon.term").gotoTerminal(1)<CR>


local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>fm", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>n", function() ui.nav_next() end)
vim.keymap.set("n", "<leader>p", function() ui.nav_prev() end)

vim.keymap.set("n", "<leader><enter>", function() term.gotoTerminal(1) end)
