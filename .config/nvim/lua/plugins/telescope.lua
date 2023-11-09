return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'ThePrimeagen/git-worktree.nvim',
      'ThePrimeagen/harpoon'
    },
    opts = {
        defaults = {
        },
        pickers = {
          find_files = {
            hidden = true,
            no_ignore = true
          }
        },
        extensions = {
          -- ...
        }
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
          "<Leader>f?",
          "<cmd>Telescope help_tags<CR>",
          desc = "Help tags",
      },
      {
          "<Leader>fm",
          "<cmd>Telescope marks<CR>",
          desc = "Show marks",
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
      --- treesitter
      {
          "<Leader>ft",
          "<cmd>Telescope treesitter<CR>",
          desc = "Show treesitter",
      },
      --- harpoon
      {
          "<Leader>hs",
          "<cmd>Telescope harpoon marks<CR>",
          desc = "Show harpoon marks",
      },
      -- vim.keymap.set('n', '<leader>gcm', ':Git commit %<CR>', { desc = 'Git commit' })
      -- vim.keymap.set('n', '<leader>ga', ':Git add %<CR>', { desc = 'Git add the current file' })
    },
}
