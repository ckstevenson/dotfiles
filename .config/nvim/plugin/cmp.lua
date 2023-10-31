-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` user.
      vim.fn["vsnip#anonymous"](args.body)

      -- For `luasnip` user.
      -- require('luasnip').lsp_expand(args.body)

      -- For `ultisnips` user.
      -- vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-CR>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  experimental = {
    ghost_text = true,
  },
  sources = {
    { name = 'nvim_lsp' },

    -- For vsnip user.
    { name = 'vsnip' },

    -- For luasnip user.
    -- { name = 'luasnip' },

    -- For ultisnips user.
    -- { name = 'ultisnips' },

    { name = 'path' },
    { name = 'buffer', keyword_length = 3 },
  }
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig').pyright.setup {
  capabilities = capabilities,
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
