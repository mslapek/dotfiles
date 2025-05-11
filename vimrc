syntax on

set shortmess+=I laststatus=2

set wildmenu wildoptions=pum
set list listchars=tab:»\ ,trail:·,nbsp:+
set number relativenumber cursorline scrolloff=12
set hlsearch incsearch smartcase ignorecase
set splitright splitbelow
set mouse=a

set foldmethod=syntax foldlevelstart=99

set autoindent smartindent shiftround
set expandtab tabstop=4 shiftwidth=4

imap jj <Esc>
nmap <space>w <C-w>
nmap <space>b <C-^>

nmap <silent> <C-w>t :term ++curwin<cr>
tnoremap jj <C-\><C-n>

colorscheme sorbet
