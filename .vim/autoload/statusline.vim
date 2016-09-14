function! statusline#ft() abort
  if strlen(&ft)
    return ',' . &ft
  else
    return ''
  endif
endfunction

function! statusline#fenc() abort
  if strlen(&fenc) && &fenc !=# 'utf-8'
    return ',' . &fenc
  else
    return ''
  endif
endfunction

function! statusline#fileprefix() abort
  let l:basename=expand('%:h')
  if l:basename == '' || l:basename == '.'
    return ''
  else
    " Make sure we show $HOME as ~.
    return substitute(l:basename . '/', '\C^' . $HOME, '~', '')
  endif
endfunction

function! statusline#update_highlight() abort
  let l:highlight = pinnacle#italicize('StatusLine')
  execute 'highlight User1 ' . l:highlight

  " StatusLine + bold (used for file names).
  let l:highlight = pinnacle#embolden('StatusLine')
  execute 'highlight User2 ' . l:highlight
endfunction

" Find out current buffer's size and output it.
" Adapted from https://gabri.me/blog/diy-vim-statusline
function! statusline#file_size()
  let bytes = getfsize(expand('%:p'))

  if bytes <= 0
    return '0B'
  endif

  if (bytes >= 1024)
    let kbytes = bytes / 1024.0
  endif

  if (exists('kbytes') && kbytes >= 1024)
    return printf('%.1fM', kbytes / 1024.0)
  elseif (exists('kbytes'))
    return printf('%.1fK', kbytes)
  else
    return printf('%dB', bytes)
  endif
endfunction
