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
