local r = require
local m = vim.keymap.set
local c = vim.cmd

vim.g.mapleader = ' '

m('i', 'jj', '<Esc>')

-- terminal
m('n', '<leader>tt', function() c.ToggleTerm() end)
m('t', '<C-;>', [[<C-\><C-n><C-w>k]])
m('t', '<C-\'>', [[<C-\><C-n>]])
m('t', '<C-k>', [[clear<cr>]])

-- tabs
m('n', '<C-s>l', c.tabn)
m('n', '<C-s>h', c.tabp)

-- neotree
m('n', '<leader>tr', c.Neotree)

-- telescope
m('n', '<leader>ff', function() r'telescope.builtin'.find_files() end)
m('n', '<leader>fg', function() r'telescope.builtin'.live_grep() end)
m('n', '<leader>fb', function() r'telescope.builtin'.buffers() end)
m('n', '<leader>fh', function() r'telescope.builtin'.help_tags() end)
m('n', '<leader>fs', function() r'telescope.builtin'.lsp_workspace_symbols() end)
m('n', '<leader>fo', function() r'telescope.builtin'.lsp_document_symbols() end)

-- lsp stuff
m('n', 'gD', vim.lsp.buf.declaration)
m('n', 'gd', vim.lsp.buf.definition)

m('n', '<leader>db', function() r'dap'.toggle_breakpoint() end)
m('n', '<leader>dc', function() r'dap'.continue() end)
m('n', '<leader>do', function() r'dap'.repl.open() end)
m('n', '<leader>o', function() r'dap'.step_over() end)
m('n', '<leader>i', function() r'dap'.step_into() end)

m('n', '<leader>du', function() r'dapui'.toggle() end)

-- git
local diffview_opened = false
local function diffview_toggle()
  if diffview_opened then c.DiffviewClose() else c.DiffviewOpen() end
  diffview_opened = not diffview_opened
end

m('n', '<leader>dd', diffview_toggle)

