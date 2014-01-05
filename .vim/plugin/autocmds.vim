" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  autocmd!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
