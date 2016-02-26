scriptencoding utf-8

" Always add any detected errors into the location list
let g:syntastic_always_populate_loc_list = 1

" Don't auto-open it when errors/warnings are detected, but auto-close when no
" more errors/warnings are detected.
let g:syntastic_auto_loc_list = 2

" Highlight syntax errors where possible
let g:syntastic_enable_highlighting = 1

" Show this many errors/warnings at a time in the location list
let g:syntastic_loc_list_height = 5

" Don't run checkers when saving and quitting--only on saving
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol         = '✖'
let g:syntastic_warning_symbol       = '⚠'
let g:syntastic_style_error_symbol   = '⚠'
let g:syntastic_style_warning_symbol = '⚠'

let g:syntastic_haml_checkers          = ['haml_lint']
let g:syntastic_javascript_checkers    = ['eslint']
let g:syntastic_javascript_eslint_exec = 'npm-exec-eslint'
let g:syntastic_json_checkers          = ['jsonlint']
let g:syntastic_ruby_checkers          = ['rubocop']
let g:syntastic_scss_checkers          = ['scss_lint']
let g:syntastic_vim_checkers           = ['vint']

" Disable Syntastic when Ferret is writing files for speed.
if has('autocmd')
  augroup LencioniFerretWrite
    autocmd!
    autocmd User FerretWillWrite call SyntasticToggleMode()
    autocmd User FerretDidWrite call SyntasticToggleMode()
  augroup END
endif
