" Allow shift+tab to insert a literal tab
inoremap <expr> <s-tab> pumvisible() ? "\<C-P>" : "\<TAB>"
