" Use <cr> for confirm completion.
" Coc only does snippet and additional edit on confirm.
let g:endwise_no_mappings = 1
imap <expr> <CR> (pumvisible() ? "\<C-Y>\<Plug>DiscretionaryEnd" : "\<CR>\<Plug>DiscretionaryEnd")
