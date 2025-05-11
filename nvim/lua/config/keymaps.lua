local m = vim.keymap.set

g.mapleader = ' '

m('i', 'jj', '<Esc>')
m('t', 'jj', [[<C-\><C-n>]])

-- navigation
m('n', '<leader>j', [[<C-d>]])
m('n', '<leader>k', [[<C-u>]])
m('n', '<C-j>', [[<C-d>]])
m('n', '<C-k>', [[<C-u>]])
m('n', '<leader>b', [[<C-^>]])

-- window
m('n', '<leader>w', [[<C-w>]], { remap = true })

-- terminal
m('n', '<C-w>t', c.term)
m('t', '<C-w>n', [[<C-\><C-n>]])
m('t', '<C-w>h', [[<C-\><C-n><C-w>h]])
m('t', '<C-w>j', [[<C-\><C-n><C-w>j]])
m('t', '<C-w>k', [[<C-\><C-n><C-w>k]])
m('t', '<C-w>l', [[<C-\><C-n><C-w>l]])

-- lsp
m('n', 'gD', vim.lsp.buf.declaration)
m('n', 'gd', vim.lsp.buf.definition)
m('n', '<leader>r', vim.lsp.buf.rename)

-- telescope
m('n', '<leader>ff', function() r'telescope.builtin'.find_files() end)
m('n', '<leader>fb', function() r'telescope.builtin'.buffers() end)
m('n', '<leader>fg', function() r'telescope.builtin'.live_grep() end)
m('n', '<leader>fs', function() r'telescope.builtin'.lsp_workspace_symbols() end)
m('n', '<leader>fd', function() r'telescope.builtin'.lsp_document_symbols() end)
m('n', '<leader>fl', function() r'telescope.builtin'.diagnostics() end)
m('i', '<C-,>', '.*')
m('i', '<C-.>', '\\b')
