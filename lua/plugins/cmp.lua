local cmp_opts = function()
  local cmp = require 'cmp'

  local function border(hl_name)
    return {
      { '╭', hl_name },
      { '─', hl_name },
      { '╮', hl_name },
      { '│', hl_name },
      { '╯', hl_name },
      { '─', hl_name },
      { '╰', hl_name },
      { '│', hl_name },
    }
  end

  local options = {
    window = {
      documentation = {
        border = border 'CmpDocBorder',
        winhighlight = 'Normal:CmpDoc',
      },
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },

    mapping = {
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),

      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },

      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif require('luasnip').expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
        else
          fallback()
        end
      end, { 'i', 's' }),

      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif require('luasnip').jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
        else
          fallback()
        end
      end, { 'i', 's' }),
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'path' },
      { name = 'buffer' },
      { name = 'nvim_lua' },
    },
  }

  return options
end

return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'rafamadriz/friendly-snippets',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind-nvim',
  },
  opts = function()
    return cmp_opts()
  end,
  config = function(_, opts)
    require('cmp').setup(opts)
  end,
}

