"
" Settings
"

let g:CommandTMaxCachedDirectories = 10
let g:CommandTScanDotDirectories = 1
let g:CommandTTraverseSCM = 'dir'

if &term =~# 'screen' || &term =~# 'xterm'
  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
  let g:CommandTSelectPrevMap = ['<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

"
" Mappings
"

nnoremap <leader>f :CommandTFlush<CR>
