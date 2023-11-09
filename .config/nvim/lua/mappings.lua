local mapper = function(mode, key, result, desc) vim.keymap.set(mode, key, result, { noremap = true, silent = true, desc = desc }) end

-- Essentials
mapper("i", "jj", "<Esc>")
mapper("n", "<leader>dts", [[:%s/\s\+$//e<CR>]], "Delete trailing spaces")
mapper("n", "<leader>w", ":w<CR>")
mapper("n", "<leader>wq", ":wq<CR>")
mapper("n", "<leader>p", [["*p]])

-- Terminals
mapper("n", "<leader><enter>", ":vsplit term://zsh<cr>", "Open a terminal" )
mapper("n", "<leader>htopo", ":vsplit term://htop<cr>", "Open a terminal" )

-- Movement
-- move by line even with `wrap` set
mapper("n", "j", "gj")
mapper("n", "k", "gk")
mapper("n", "0", "g0")
mapper("n", "$", "g$")

-- Move between windows
mapper("n", "<C-j>", "<C-w>j", "Window down")
mapper("n", "<C-h>", "<C-w>h", "Window left")
mapper("n", "<C-k>", "<C-w>k", "Window up")
mapper("n", "<C-l>", "<C-w>l", "Window right")

-- Buffers
mapper("n", "<Leader>bn", ":bn<CR>", "Next buffer")
mapper("n", "<Leader>bp", ":bp<CR>", "Prev buffer")
mapper("n", "<Leader>bd", ":bp | bd #<CR>", "Delete current buffer")
mapper("n", "<Leader>ba", ":bufdo bd", "Prev buffer")

-- Splits
mapper("n", "<Leader>sv", ":vsplit <CR>", "Prev buffer")
mapper("n", "<Leader>sh", ":split <CR>", "Prev buffer")

-- Spelling
mapper("n", "<leader>ss", [[:setlocal spell!<CR>]], "Move line down")
mapper('n', '<leader>sn', ']s', "Move to next incorrectly spelled word")
mapper('n', '<leader>sp', '[s', "Move to previous incorrectly spelled word")
mapper('n', '<leader>sa', 'zg', "Add word to dictionary")
mapper('n', '<leader>s?', 'z=', "Show available spelling corrections")

-- Window Resizing
mapper('n', '<C-A-l>', ':exe "vertical resize +5"<CR>',"Resize vertial +5")
mapper('n', '<C-A-h>', ':exe "vertical resize -5"<CR>',"Resize vertical -5")
mapper('n', '<C-A-k>', ':exe "resize +5"<CR>', "Resize horizontal +5")
mapper('n', '<C-A-j>', ':exe "resize -5"<CR>', "Resize vertlical -5")

-- Term
mapper("t", "<Esc><Esc>", [[<C-\><C-n>]])
mapper("t", "<C-j>", [[<C-\><C-n><C-w>j]], "Window down")
mapper("t", "<C-h>", [[<C-\><C-n><C-w>h]], "Window left")
mapper("t", "<C-k>", [[<C-\><C-n><C-w>k]], "Window up")
mapper("t", "<C-l>", [[<C-\><C-n><C-w>l]], "Window right")

-- Other basics
mapper("n", "<Down>", [["pdd"pp]], "Move line down")
mapper("n", "<Up>", [["pddk"pP]], "Move line up")
mapper("n", "<C-e>", "3<C-e>") -- scroll down more quickly
mapper("n", "<C-y>", "3<C-y>") -- scroll up more quickly
mapper("n", "+", "=", "Format")
mapper("n", "<Leader>nn", ":set relativenumber!<CR>", "Toggle relative numbers")
mapper("n", "<Leader>z", ":call ToggleFocus()<CR>", "Toggle focus")
mapper("n", "<Leader>W", ":set wrap!<CR>", "Toggle wrap")
mapper("n", "<Leader>tn", "<cmd>tabn<CR>", "Next tab");
mapper("n", "<Leader>tp", "<cmd>tabp<CR>", "Prev tab");
mapper("n", "<Leader>tq", "<cmd>tabcl<CR>", "Close tab");
