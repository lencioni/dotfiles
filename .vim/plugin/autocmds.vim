" Remove trailing whitespace on save
augroup RemoveTrailingWhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Disable paste mode when leaving insert mode
augroup DisablePastModeWhenLeavingInsertMode
  autocmd!
  autocmd InsertLeave * set nopaste
augroup END

" Automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  autocmd!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
