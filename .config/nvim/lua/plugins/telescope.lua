return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.4', 
  dependencies = { 
    'nvim-lua/plenary.nvim' 
  },
  keys = {
    {
        "<Leader>ff",
        "<cmd>Telescope find_files<CR>",
        desc = "Find files",
    },
    {
        "<Leader>fg",
        "<cmd>Telescope live_grep<CR>",
        desc = "Grep files",
    },
    {
        "<Leader>fb",
        "<cmd>Telescope buffers<CR>",
        desc = "Buffers",
    },
    {
        "<Leader>fh",
        "<cmd>Telescope help_tags<CR>",
        desc = "Help tags",
    },
    {
        "<Leader>gg",
        "<cmd>Telescope git_files<CR>",
        desc = "Show git files",
    },
    {
        "<Leader>gc",
        "<cmd>Telescope git_commits<CR>",
        desc = "Show git commits",
    },
    {
        "<Leader>gb",
        "<cmd>Telescope git_branches<CR>",
        desc = "Show git branches",
    },
    {
        "<Leader>gs",
        "<cmd>Telescope git_status<CR>",
        desc = "Show git status",
    },
    {
        "<Leader>ft",
        "<cmd>Telescope treesitter<CR>",
        desc = "Show treesitter",
    },
    -- vim.keymap.set('n', '<leader>gcm', ':Git commit %<CR>', { desc = 'Git commit' })
    -- vim.keymap.set('n', '<leader>ga', ':Git add %<CR>', { desc = 'Git add the current file' })
  },
}
