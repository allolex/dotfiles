autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab textwidth=88 nowrap formatoptions-=t
autocmd FileType python autocmd BufWritePre <buffer> execute ':Black'

let @p = "import pprint as pp; import pdb; pdb.set_trace()"

let g:syntastic_python_checkers = ['flake8', 'mypy']
let g:syntastic_python_flake8_post_args="--max-line-length=120"
