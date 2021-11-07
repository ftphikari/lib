colorscheme slate
syntax on

set colorcolumn=80
hi ColorColumn ctermbg=8

set hidden
set nohlsearch
set number
set autoindent
set tabstop=2
set noeb visualbell t_vb=
set wildmenu
set backspace=indent,eol,start
set history=200
set incsearch
set whichwrap+=<,>,[,]
set mouse=a

set backup
set writebackup
set undofile
set backupskip=/tmp/*
set backupdir=/tmp
set directory=/tmp
set undodir=/tmp

if bufname('%') == ''
	set bufhidden=wipe
endif

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
	au BufRead,BufNewFile *.odin set filetype=go
endif

vmap > >gv
vmap < <gv
nnoremap Q @q
" smaller undos
inoremap <Space> <Space><C-g>u

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

nnoremap <C-w> :bd<CR>
nnoremap <C-e> :buffer<Space>#<CR>
nnoremap <C-b> :buffers<CR>:buffer<Space>
nnoremap <C-o> :e<Space>
nnoremap <C-s> :w<CR>
nnoremap r <C-R>
