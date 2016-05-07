" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
if has('statusline')
  set statusline+=%< " truncation point, if not enough width available
  set statusline+=%{statusline#fileprefix()} " relative path to file's directory
  set statusline+=%2* " switch to User2 highlight group (bold)
  set statusline+=%t " filename
  set statusline+=%* " reset highlight group
  set statusline+=\  " space
  set statusline+=%1* " switch to User1 highlight group (italics)

  " needs to be all on one line:
  "   %(                   start item group
  "   %M                   modified flag: ,+/,- (modified/unmodifiable) or nothing
  "   %R                   read-only flag: ,RO or nothing
  "   %{statusline#ft()}   filetype (not using %Y because I don't want caps)
  "   %{statusline#fenc()} file-encoding if not UTF-8
  "   %)                   end item group
  set statusline+=%(%M%R%{statusline#ft()}%{statusline#fenc()}%)

  set statusline+=%* " reset highlight group
  set statusline+=%= " split point for left and right groups
  set statusline+=\  " space
  set statusline+=%1* " switch to User1 highlight group (italics)
  set statusline+=%p " percentage through buffer
  set statusline+=%% " literal %
  set statusline+=%* " reset highlight group
  set statusline+=\ @\  " space
  set statusline+=%v " current virtual column number

  augroup LencioniStatusline
    autocmd!
    autocmd ColorScheme * call statusline#update_highlight()
  augroup END
endif
