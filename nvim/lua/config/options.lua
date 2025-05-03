local o = vim.opt
local c = vim.cmd

o.shortmess:append 'I'

o.number = true
o.relativenumber = true

o.scrolloff = 16
o.cursorline = true
o.list = true

o.splitright = true
o.splitbelow = true

o.foldmethod = 'syntax'
o.foldlevelstart = 99

o.wildmode = { 'longest:full', 'full' }

o.smartcase = true

c.colorscheme 'sorbet'
