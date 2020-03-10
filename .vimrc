color molokai
" set background=dark
syntax on
filetype on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set expandtab
set ts=4
set sw=4
set sts=4

autocmd FileType c,cpp :set expandtab ts=2 sw=2 softtabstop=2
autocmd FileType java :set expandtab ts=2 sw=4 softtabstop=4
autocmd FileType yaml :set ts=2 sw=2 softtabstop=2

call plug#begin('~/.vim/plugged')

call plug#end()

let &t_ut=''
hi Normal guibg=NONE ctermbg=NONE
" to make vim compatible with the color scheme of the terminal emulator
