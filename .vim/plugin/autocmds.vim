augroup Lencioni
  autocmd!

  " Remove trailing whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Automatically reload vimrc when it's saved
  autocmd BufWritePost $MYVIMRC so $MYVIMRC

  " Automatically rebuild custom dictionary binaries when saving the text versions
  autocmd BufWritePost .vim/spell/*.add silent! :mkspell! %
augroup END
