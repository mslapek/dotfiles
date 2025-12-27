local r = require
local o = vim.opt

o.shortmess:append 'I'

o.cursorline = true
o.scrolloff = 16

o.laststatus = 0

o.splitright = true
o.splitbelow = true

o.smartcase = true
o.wildmode = { 'longest:full', 'full' }

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.h',
  command = 'set filetype=c',
})

r'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
}

vim.cmd.colorscheme 'wildcharm'
