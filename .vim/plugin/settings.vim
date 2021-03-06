scriptencoding utf-8

set autoindent " keep indentation when starting new lines
set autoread " autoload external changes unless unsaved changes
set backspace=indent,start,eol " allow unrestricted backspacing in insert mode
set backupdir=~/.vim/tmp/backup,. " keep backup files out of the way

if exists('&belloff')
  set belloff=all " never ring the bell for any reason
endif

if has('linebreak')
  set breakindent " indent wrapped lines to match start
  if exists('&breakindentopt')
    set breakindentopt=shift:2 " emphasize broken lines by indenting them
  endif
endif

if exists('+colorcolumn')
  set colorcolumn=+0 " Vertical line at `textwidth` characters
endif

set directory=~/.vim/tmp/swap//,. " keep swap files out of the way, trailing // stores full dir
set expandtab " always use spaces instead of tabs

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j " remove comment leader when joining comment lines
endif

set formatoptions+=c " auto-wrap comments using textwidth
set formatoptions+=n " smart auto-indenting inside numbered lists
set formatoptions+=q " allow formatting of comments with `gq`
set hidden " allows you to hide buffers with unsaved changes without being prompted
set highlight+=@:ColorColumn " ~/@ at end of window, 'showbreak'
set history=1000 " make vim remember more than 20 commands
set hlsearch " highlight search strings
set ignorecase " ignore case when searching
set incsearch " incremental search
set laststatus=2 " always show the statusline
set lazyredraw " don't redraw while executing macros, etc.

if has('linebreak')
  set linebreak " wrap long lines at characters in 'breakat'
endif

set list " show whitespace
set listchars=nbsp:⦸ " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅ " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                      " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:» " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:« " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:• " BULLET (U+2022, UTF-8: E2 80 A2)
set nojoinspaces " don't autoinsert two spaces after '.', '?', '!' for join command
set number " enable number lines
set path+=app/assets/javascripts " improve file finding for JS files in Rails projects
set scrolloff=6 " maintain 6 lines of context around the cursor
set shiftround " round indent to shiftwidth when using > and <
set shiftwidth=2 " spaces per tab (when shifting)
set shortmess+=A " ignore annoying swapfile messages
set shortmess+=I " no splash screen

if has('linebreak')
  " start of lines that have been wrapped
  let &showbreak='⤷ ' " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
endif

if has('showcmd')
  set showcmd " extra info at end of command line
endif

set sidescrolloff=3 " same as scolloff, but for columns
set smartcase " case-sensitive search if search string includes a capital letter
set smarttab " <tab>/<BS> indent/dedent in leading whitespace
set softtabstop=-1 " spaces per tab (when tabbing/backspacing)
set splitbelow " open horizontal splits below current window
set splitright " open vertical splits to the right of the current window
set tabstop=2 " spaces per tab
set textwidth=80 " automatically hard wrap

if has('persistent_undo')
  set undodir=~/.vim/tmp/undo,. " keep undo files out of the way
  set undofile " actually use undo files
endif

set virtualedit=block " allow cursor to move where there is no text in visual block mode
set visualbell " replace beeping with a visual bell
set whichwrap=b,h,l,s,<,>,[,],~ " <BS>/h/l/<Left>/<Right>/<Space>/~ can cross line boundaries

" patterns to ignore during file-navigation
if has('wildignore')
  set wildignore+=*.o
  set wildignore+=*.pyc " compiled Python bytecode
  set wildignore+=.sass-cache " only auto-generated Sass junk
endif

set wildmenu " show options as list when switching buffers etc
set wildmode=longest:full,full " shell-like autocomplete to unambiguous portion
