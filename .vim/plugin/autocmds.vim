" Remove trailing whitespace on save
augroup RemoveTrailingWhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  autocmd!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
