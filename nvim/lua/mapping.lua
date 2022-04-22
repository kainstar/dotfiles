local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Navigate buffers
map('n', '<S-l>', '<cmd>bnext<CR>', opts)
map('n', '<S-h>', '<cmd>bprevious<CR>', opts)

-- NvimTree
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)
map('n', '<leader>o', '<cmd>NvimTreeFocus<CR>', opts)

