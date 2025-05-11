o.shortmess:append 'I'

o.number = true
o.relativenumber = true
o.cursorline = true
o.scrolloff = 16
o.list = true
o.splitright = true
o.splitbelow = true

o.smartcase = true
o.foldmethod = 'syntax'
o.foldlevelstart = 99

o.wildmode = { 'longest:full', 'full' }

g.netrw_banner = 0
g.netrw_liststyle = 3

r'kanagawa'.setup { commentStyle = { italic = false } }
c.colorscheme 'kanagawa'
