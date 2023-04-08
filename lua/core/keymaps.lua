vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Close buffer
vim.keymap.set('n', '<leader>c', ':bd<CR>')

-- Rebind window command
vim.keymap.set('n', '<leader>w', '<c-w>', { noremap = true })

-- Save and source file
vim.keymap.set('n', '<leader>s', ':w<Bar>so<CR>', { noremap = true })
