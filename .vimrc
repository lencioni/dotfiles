set tabstop=2
set shiftwidth=2
" set colorcolumn=80
set expandtab

" Keep indentation when starting new lines
set autoindent

" Enable number lines
set nu

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Vertical line at 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Allow clicking to move cursor
if has('mouse')
  set mouse=a
endif

" pathogen stuff
call pathogen#runtime_append_all_bundles()  " add .vim/bundle subdirs to runtime path
call pathogen#helptags()                    " wasteful, but no shortage of grunt available
