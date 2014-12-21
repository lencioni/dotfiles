"
" Visual mode mappings
"

vnoremap <leader><Tab>= :Tabularize /=\s.*/<CR>
vnoremap <leader><Tab>; :Tabularize /:\zs\s.*/<CR>

"
" Normal mode mappings
"

" \rh -- Convert hashrockets to Ruby 1.9
nnoremap <leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<cr>

" \\ -- open last buffer
nnoremap <leader><leader> <C-^>

" \e -- edit file, starting in same directory as current file
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" \a -- Ack
nnoremap <leader>a :Ack<space>

" \w -- Easy save
nnoremap <Leader>w :w<CR>

" Q -- Prevent Q from entering ex mode by mapping it to play the q macro
nnoremap Q @q

" <esc> -- Clear search highlighting by pressing <esc>
nnoremap <esc> :nohlsearch<return><esc>

"
" Insert mode mappings
"

" jj -- Easily escape from INSERT mode
inoremap jj <Esc>
