syntax on
filetype on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set expandtab
set ts=4
set sw=4
set sts=4
set number
set autoindent
set cindent
set cino=l1
set clipboard=unnamedplus
set fillchars+=vert:\ 
highlight VertSplit cterm=NONE
set termguicolors
set smartcase
set mouse=

autocmd FileType c,cpp :set expandtab ts=2 sw=2 softtabstop=2
autocmd FileType java :set expandtab ts=2 sw=4 softtabstop=4
autocmd FileType yaml :set ts=2 sw=2 softtabstop=2

