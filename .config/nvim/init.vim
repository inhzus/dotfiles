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

autocmd FileType c,cpp :set expandtab ts=2 sw=2 softtabstop=2
autocmd FileType java :set expandtab ts=2 sw=4 softtabstop=4
autocmd FileType yaml :set ts=2 sw=2 softtabstop=2
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'wakatime/vim-wakatime'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rhysd/git-messenger.vim'
call plug#end()

" custom config
nnoremap <Leader><space> :noh<cr>
nmap <A-1> 1gt<CR>
nmap <A-2> 2gt<CR>
nmap <A-3> 3gt<CR>
tnoremap <Esc> <C-\><C-n>

" coc.nvim config
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
command! -nargs=0 Format :call CocAction('format')
" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

:nmap <space>e :CocCommand explorer<CR>
let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.currentFunctionSymbolAutoUpdate'] = 'true'

nmap <Leader>gs <Plug>(coc-git-chunkinfo)

" vim-lsp-cxx-highlight
let g:lsp_cxx_hl_use_text_props = 1
let g:lsp_cxx_hl_use_nvim_text_props = 1

" fzf.nvim
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
:nmap <A-f> :FZF<CR>
:nmap <A-t> :tabnew<CR>:FZF<CR>

" rainbow
let g:rainbow_active = 1

" lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'git','modified' ] ],
      \   'right': [ [ 'percent', 'lineinfo' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \ },
      \ }

" auto-pair
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '\w\zs<':'>'}

" Colorizer
let g:colorizer_auto_map = 1

" commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
autocmd FileType xdefaults setlocal commentstring=!\ %s

" vim-signify
set updatetime=100

" dracula
set runtimepath+=~/.config/nvim/plugged/dracula/
color dracula
" let &t_ut=''
hi Normal guibg=NONE ctermbg=NONE

" git-messenger
nmap <Leader>gm <Plug>(git-messenger)

" coc-texlab
nmap <Leader>ll :call CocActionAsync('runCommand', 'latex.Build')<CR>
