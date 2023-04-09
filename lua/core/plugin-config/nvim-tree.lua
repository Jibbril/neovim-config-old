vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()
require('nvim-web-devicons').setup()

vim.keymap.set('n', '<leader>E', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>e', '::NvimTreeFocus<CR>')

