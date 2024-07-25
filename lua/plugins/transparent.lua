return {
  'tribela/transparent.nvim',
  event = 'VimEnter',
  config = true,
  opts = {
    auto = true, -- Automatically applies transparent
    extra_groups = {}, -- If you want to add some groups to be transparent. eg: { 'Pmenu', 'CocFloating' }
    excludes = {},
  },
}
