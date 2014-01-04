runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()                " add .vim/bundle subdirs to runtime path
call pathogen#helptags()              " wasteful, but no shortage of grunt available

" automatic, language-dependent indentation, syntax coloring and other
" functionality
filetype indent plugin on
syntax on

" change the mapleader from \ to ,
let mapleader=","

" After this file is sourced, plug-in code will be evaluated.
" See ~/.vim/after for files evaluated after that.
" See `:scriptnames` for a list of all scripts, in evaluation order.
" Launch Vim with `vim --startuptime vim.log` for profiling info.
"
" To see all leader mappings currently in use:
"
"   grep -R leader .vimrc .vim/plugin | perl -pe 's/.+(<leader>\w+).+/\1/' | sort | uniq
