"
" Normal mode mappings
"

" Convert hashrockets to Ruby 1.9
nnoremap <leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<cr>

nnoremap <leader>a :Ack<space>
