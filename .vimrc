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

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'

"Plug 'ludovicchabant/vim-gutentags'
"Plug 'skywind3000/gutentags_plus'
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
"let g:gutentags_modules = ['ctags', 'gtags_cscope']
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
"let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
"let s:vim_tags = expand('~/.cache/tags')
"let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 检测 ~/.cache/tags 不存在就新建
"if !isdirectory(s:vim_tags)
"   silent! call mkdir(s:vim_tags, 'p')
"endif


function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Plug 'dense-analysis/ale'
" let g:ale_linters_explicit = 1
" let g:ale_completion_delay = 500
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" let g:airline#extensions#ale#enabled = 1
" let g:ale_linters = {'cpp': ['clangtidy'], 'python': ['flake8', 'pylint'], 'java': ['google_java_format', 'checkstyle', 'eclipselsp', 'javalsp', 'pmd']}
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++17'
" let g:ale_c_cppcheck_options = ''
" let g:ale_sign_error = "\ue009\ue009"
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
" hi! clear SpellBad
" hi! clear SpellCap
" hi! clear SpellRare
" hi! SpellBad gui=undercurl guisp=red
" hi! SpellCap gui=undercurl guisp=blue
" hi! SpellRare gui=undercurl guisp=magenta

" Plug 'mhinz/vim-signify'
" set updatetime=100

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plug 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1

Plug 'jeaye/color_coded'
let g:color_coded_enabled = 1
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

