autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab textwidth=88 nowrap formatoptions-=t
"autocmd FileType python autocmd BufWritePre <buffer> execute ':Black'

let g:pymode_breakpoint = 0
let g:pymode_lint = 0

let @p = "import pprint as pp; import pdb; pdb.set_trace()"

let g:syntastic_python_checkers = ['flake8', 'mypy']
let g:syntastic_python_flake8_post_args="--max-line-length=120"

let g:python_host_prog = '/Users/damon/.asdf/shims/python2'
let g:python3_host_prog = '/Users/damon/.asdf/shims/python3'
