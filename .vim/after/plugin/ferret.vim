" Wrapper around ferret's `:Acks` to disable and re-enable syntastic for speed.
function! Acks(command)
  " Syntastic makes saving slow, and since we aren't looking at the files to see
  " the warnings, we want to disable it when running through the files.
  SyntasticToggleMode

  call ferret#private#acks(a:command)

  " Re-enable syntastic.
  SyntasticToggleMode
endfunction

command! -nargs=1 Acks call Acks(<q-args>)
