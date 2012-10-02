set nocompatible                 " Disable vi-compatibility (must come before other options)

set autoindent                   " keep indentation when starting new lines
set backspace=indent,start,eol   " allow unrestricted backspacing in insert mode
set expandtab                    " always use spaces instead of tabs
set hidden                       " keep undo when changing buffers
set history=1000                 " make vim remember more than 20 commands
set nu                           " enable number lines
set scrolloff=3                  " maintain 3 lines of context around the cursor
set shiftwidth=2                 " spaces per tab (when shifting)
set tabstop=2                    " spaces per tab
set visualbell                   " replace beeping with a visual bell
set whichwrap=b,h,l,s,<,>,[,],~  " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
set wildignore+=*.o,.git,tmp,log " patterns to ignore during file-navigation

" Searching
set hlsearch   " highlight search strings
set ignorecase " ignore case when searching
set incsearch  " incremental search
set smartcase  " ignore case when searching unless search string contains an uppercase character

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" change the mapleader from \ to ,
let mapleader=","

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

" Ruby
autocmd FileType ruby set shiftwidth=2 | set smartindent | set tabstop=2

" C
autocmd FileType c set shiftwidth=4 | set tabstop=4

" Objective-C
let filetype_m='objc'
autocmd FileType objc set shiftwidth=4 | set tabstop=4

" Prolog
let filetype_pl='prolog'
autocmd FileType prolog set shiftwidth=2 | set tabstop=2

" RSpec
autocmd BufNewFile,BufRead *_spec.rb set ft=ruby.spec

" Jasmine
autocmd BufNewFile,BufRead *_spec.js set ft=javascript.jasmine

" automatic, language-dependent indentation, syntax coloring and other
" functionality
filetype indent plugin on
syntax on

" pathogen stuff
call pathogen#runtime_append_all_bundles()  " add .vim/bundle subdirs to runtime path
call pathogen#helptags()                    " wasteful, but no shortage of grunt available

" ack
set grepprg=ack\ --column
set grepformat=%f:%l:%c:%m
autocmd QuickFixCmdPost [^l]* nested cw
autocmd QuickFixCmdPost l* nested lw

function! AckGrep(command)
  cexpr system("ack --column " . a:command)
  cw
endfunction

function! LackGrep(command)
  lexpr system("ack --column " . a:command)
  lw
endfunction

command! -nargs=+ -complete=file Ack call AckGrep(<q-args>)
nnoremap <leader>a :Ack<space>

" Command-T
let g:CommandTMatchWindowReverse   = 1
let g:CommandTMaxHeight            = 10
let g:CommandTMaxFiles             = 30000
let g:CommandTMaxCachedDirectories = 10
let g:CommandTScanDotDirectories   = 1
nnoremap <leader>f :CommandTFlush<CR>
nnoremap <silent> <leader>j :CommandTJump<CR>
nnoremap <leader>g :CommandTTag<CR>
if &term =~ "screen" || &term =~ "xterm"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

" prevent Align.vim from defining a bunch of maps starting with <leader>t
" and introducing an annoying delay when opening Command-T
let g:loaded_AlignMapsPlugin = "v41"

" Convert hashrockets to Ruby 1.9
nmap <leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<cr>

" Solarized
colorscheme solarized
set background=dark
set t_Co=16

" Powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'

" Autocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup            = 1
let g:neocomplcache_enable_smart_case            = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion   = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Highlighting first candidate.
let g:neocomplcache_enable_auto_select = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" ctrl+space opens
inoremap <Nul> <C-n>
" tab selects
inoremap <expr> <TAB> pumvisible() ? neocomplcache#close_popup() : "\<TAB>"
" enter does not select
inoremap <expr> <CR> neocomplcache#cancel_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" Autocorrect my common typos
iab THis This
iab THe The
