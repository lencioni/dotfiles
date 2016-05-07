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

"
" Mappings
"

nnoremap <leader>f :CommandTFlush<CR>
