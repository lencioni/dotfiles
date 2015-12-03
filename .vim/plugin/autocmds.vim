" Remove trailing whitespace on save
augroup LencioniRemoveTrailingWhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Automatically reload vimrc when it's saved
augroup LencioniAutoReloadVimRC
  autocmd!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" Automatically rebuild custom dictionary binaries when saving the text versions
augroup LencioniMkspell
  autocmd BufWritePost .vim/spell/*.add silent! :mkspell! %
augroup END
