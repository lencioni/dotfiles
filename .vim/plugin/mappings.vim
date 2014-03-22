"
" Visual mode mappings
"

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"
" Normal mode mappings
"

" Convert hashrockets to Ruby 1.9
nnoremap <leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<cr>

nnoremap <leader>a :Ack<space>

" Easy save
nnoremap <Leader>w :w<CR>

" Easy visual line mode
nmap <Leader><Leader> V

" splitjoin
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" Prevent Q from entering ex mode by mapping it to play the q macro
nnoremap Q @q

"
" Insert mode mappings
"

" Easily escape from INSERT mode
inoremap jj <Esc>
