local r = require
local m = vim.keymap.set
local c = vim.cmd

vim.g.mapleader = ' '

m('i', 'jj', '<Esc>')

-- terminal
m('t', '<C-w>n', [[<C-\><C-n>]])
m('t', '<C-w>h', [[<C-\><C-n><C-w>h]])
m('t', '<C-w>j', [[<C-\><C-n><C-w>j]])
m('t', '<C-w>k', [[<C-\><C-n><C-w>k]])
m('t', '<C-w>l', [[<C-\><C-n><C-w>l]])

-- lsp
m('n', 'gD', vim.lsp.buf.declaration)
m('n', 'gd', vim.lsp.buf.definition)

-- telescope
m('n', '<leader>ff', function() r'telescope.builtin'.find_files() end)
m('n', '<leader>fb', function() r'telescope.builtin'.buffers() end)
m('n', '<leader>fs', function() r'telescope.builtin'.lsp_workspace_symbols() end)
m('n', '<leader>fd', function() r'telescope.builtin'.lsp_document_symbols() end)
