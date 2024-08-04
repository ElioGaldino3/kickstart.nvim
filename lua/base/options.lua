vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 7

vim.opt.hlsearch = true

-- Obsidian config
vim.opt.conceallevel = 2

-- Neovide Configuration

vim.g.neovide_fullscreen = false
vim.g.neovide_floating_blur_amount_x = 0.0
vim.g.neovide_floating_blur_amount_y = 0.0
vim.g.floaterm_winblend = 15
vim.g.neovide_remember_window_size = true
vim.g.neovide_padding_top = 3
vim.g.neovide_window_blurred = false
vim.g.neovide_floating_shadow = false
vim.g.neovide_transparency = 0.8
vim.g.neovide_show_border = false
vim.g.neovide_scroll_animation_far_lines = 1
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = 'auto'
vim.g.neovide_padding_bottom = 3
vim.g.neovide_padding_right = 3
vim.g.neovide_padding_left = 3
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_length = 0
vim.g.neovide_cursor_antialiasing = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_cursor_smooth_blink = false
vim.opt.linespace = 0
vim.g.neovide_cursor_vfx_mode = ''
vim.o.guifont = 'Hasklug Nerd Font:h12' -- text below applies for VimScript
