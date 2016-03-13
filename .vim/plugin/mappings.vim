" Normal mode mappings

" \rh -- Convert hashrockets to Ruby 1.9
nnoremap <Leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<CR>

" \\ -- open last buffer
nnoremap <Leader><Leader> <C-^>

" \e -- edit file, starting in same directory as current file
nnoremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" \w -- Easy save
nnoremap <Leader>w :w<CR>

" Q -- Prevent Q from entering ex mode by mapping it to play the q macro
nnoremap Q @q

" <Esc> -- Clear search highlighting
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" \j -- import-js import
nnoremap <unique> <silent> <Leader>j :ImportJSImport<CR>

" \d -- vim-dispatch Dispatch
nnoremap <unique> <Leader>d :Dispatch<CR>


" Insert mode mappings

" jj -- Easily escape from INSERT mode
inoremap jj <Esc>


" Command mode mappings

" Bash-like keys for the command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
