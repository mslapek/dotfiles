local m = vim.keymap.set

vim.g.mapleader = ' '

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

-- lsp
m('n', 'gD', vim.lsp.buf.declaration)
m('n', 'gd', vim.lsp.buf.definition)
m('n', '<leader>r', vim.lsp.buf.rename)

-- debugging
m('n', '<leader>db', function() r'dap'.toggle_breakpoint() end)
m('n', '<leader>dc', function() r'dap'.continue() end)
m('n', '<leader>dr', function() r'dap'.repl.open() end)

-- telescope
m('n', '<leader>ff', function() r'telescope.builtin'.find_files() end)
m('n', '<leader>fb', function() r'telescope.builtin'.buffers() end)
m('n', '<leader>fg', function() r'telescope.builtin'.live_grep() end)
m('n', '<leader>fs', function() r'telescope.builtin'.lsp_workspace_symbols() end)
m('n', '<leader>fd', function() r'telescope.builtin'.lsp_document_symbols() end)
m('n', '<leader>fl', function() r'telescope.builtin'.diagnostics() end)
