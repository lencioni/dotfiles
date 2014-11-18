set autoindent                    " keep indentation when starting new lines
set autoread                      " autoload external changes unless unsaved changes
set backspace=indent,start,eol    " allow unrestricted backspacing in insert mode
set backupdir=~/.vim/tmp/backup,. " keep backup files out of the way

if exists('+colorcolumn')
  set colorcolumn=80              " Vertical line at 80 characters
endif

set directory=~/.vim/tmp/swap,.   " keep swap files out of the way
set expandtab                     " always use spaces instead of tabs
set formatoptions+=j              " where it makes sense, remove a comment leader when joining lines
set formatoptions+=n              " smart auto-indenting inside numbered lists
set hidden                        " keep undo when changing buffers
set history=1000                  " make vim remember more than 20 commands
set hlsearch                      " highlight search strings
set ignorecase                    " ignore case when searching
set incsearch                     " incremental search
set nu                            " enable number lines
set scrolloff=6                   " maintain 6 lines of context around the cursor
set shiftround                    " round indent to shiftwidth when using > and <
set shiftwidth=2                  " spaces per tab (when shifting)
set shortmess+=A                  " ignore annoying swapfile messages
set shortmess+=I                  " no splash screen
set smartcase                     " case-sensitive search if search string includes a capital letter
set softtabstop=-1                " spaces per tab (when tabbing/backspacing).
set tabstop=2                     " spaces per tab

if has('persistent_undo')
  set undodir=~/.vim/tmp/undo,.   " keep undo files out of the way
  set undofile                    " actually use undo files
endif

set visualbell                    " replace beeping with a visual bell
set whichwrap=b,h,l,s,<,>,[,],~   " <BS>/h/l/<Left>/<Right>/<Space>/~ can cross line boundaries
set wildignore+=*.o,.git,tmp,log  " patterns to ignore during file-navigation
set wildignore+=.sass-cache       " only auto-generated Sass junk
set wildignore+=bower_components  " vendored files
set wildignore+=node_modules      " typically thousands of vendored files here
