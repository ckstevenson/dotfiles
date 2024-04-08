return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
--        'petertriho/cmp-git',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip'
    },
    config = function()
        local cmp = require'cmp'

        cmp.setup({
          snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
          },
          window = {
            -- completion = cmp.config.window.bordered(),
            -- documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          }),
          sources = cmp.config.sources({
              { name = 'nvim_lsp' },
              { name = 'luasnip' }, -- For luasnip users.
              { name = 'buffer' },
              { name = 'path' },
          })
        })

        -- Set configuration for specific filetype.
--         cmp.setup.filetype('gitcommit', {
--           sources = cmp.config.sources({
--             { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
--             { name = 'buffer' },
--           })
--         })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
            { name = 'path' },
            { name = 'cmdline' }
          })
        })

        -- Set up lspconfig.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig').jinja_lsp.setup{
          capabilities = capabilities
        }
        require('lspconfig').pyright.setup {
          capabilities = capabilities
        }
        require('lspconfig').bashls.setup {
          capabilities = capabilities
        }
        require('lspconfig').terraformls.setup {
          capabilities = capabilities
        }
        require('lspconfig').gopls.setup {
          capabilities = capabilities
        }
        require('lspconfig').dockerls.setup {
          capabilities = capabilities
        }
        require('lspconfig').ansiblels.setup {
          capabilities = capabilities,
          filetypes = { "yaml" }
        }
        require('lspconfig').nixd.setup {
          capabilities = capabilities
        }
        require'lspconfig'.lua_ls.setup {
          capabilities = capabilities,
          on_init = function(client)
            local path = client.workspace_folders[1].name
            if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
              client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
                  Lua = {
                      diagnostics = {
                          -- Get the language server to recognize the `vim` global
                          globals = {
                            'vim',
                            'require'
                          },
                      },
                  }
              })

              client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
            end
            return true
          end
        }
--        require('lspconfig').marksman.setup {
--          capabilities = capabilities,
--        }
    end,
}
