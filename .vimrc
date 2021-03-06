set nocompatible

" add .vim/bundle subdirs to runtime path
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" automatic, language-dependent indentation, syntax coloring and other
" functionality
filetype indent plugin on
syntax on

" change the mapleader from \ to <Space>
let mapleader = "\<Space>"

" Turn off pair matching highlighting (it is very slow)
let loaded_matchparen = 1

" After this file is sourced, plug-in code will be evaluated.
" See ~/.vim/after for files evaluated after that.
" See `:scriptnames` for a list of all scripts, in evaluation order.
" Launch Vim with `vim --startuptime vim.log` for profiling info.
"
" To see all leader mappings currently in use:
"
"   grep -R leader .vimrc .vim/plugin | perl -pe 's/.+(<leader>\w+).+/\1/' | sort | uniq
