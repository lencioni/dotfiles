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
