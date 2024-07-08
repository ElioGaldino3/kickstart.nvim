local map = vim.keymap

map.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

map.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

map.set('n', '<leader>q', ":bdelete<cr>")
map.set('n', '<leader>w', ":w<cr>")

map.set('i', 'jk', '<esc>')
map.set('n', ';', ':')
