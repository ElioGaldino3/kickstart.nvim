return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.

  'RishabhRD/nvim-rdark',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  dependencies = {
    'tjdevries/colorbuddy.vim',
  },
  init = function()
    require('colorbuddy').colorscheme 'nvim-rdark'
    vim.cmd.hi 'Comment gui=none'
  end,
}
