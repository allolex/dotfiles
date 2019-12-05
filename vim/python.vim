autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab textwidth=88 nowrap
autocmd FileType python autocmd BufWritePre <buffer> execute ':Black'
" let @p = '
"         import pprint as pp
"         import pdb
"
"         pdb.set_trace()
" '
