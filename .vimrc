color default
set background=dark
syntax on
set expandtab
set tabstop=4
set shiftwidth=4

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

