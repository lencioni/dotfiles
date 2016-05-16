"
" Settings
"

if &term =~# 'screen' || &term =~# 'xterm'
  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
endif

let g:CommandTEncoding = 'UTF-8'
let g:CommandTMaxCachedDirectories = 10
let g:CommandTScanDotDirectories = 1
let g:CommandTTraverseSCM = 'dir'

let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore.=',*/.git'
let g:CommandTWildIgnore.=',*/.hg'
let g:CommandTWildIgnore.=',*/bower_components'
let g:CommandTWildIgnore.=',*/node_modules'
let g:CommandTWildIgnore.=',*/tmp'
let g:CommandTWildIgnore.=',*/vendor'

"
" Mappings
"

nnoremap <leader>f :CommandTFlush<CR>
