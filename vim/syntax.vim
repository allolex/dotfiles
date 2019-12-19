let g:syntastic_aggregate_errors = 1

au BufRead,BufNewFile {*.vue} set ft=vue
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,Vagrantfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" Fake '|' as text object
nnoremap di\| T\|d,
nnoremap da\| F\|d,
nnoremap ci\| T\|c,
nnoremap ca\| F\|c,
nnoremap yi\| T\|y,
nnoremap ya\| F\|y,
nnoremap vi\| T\|v,
nnoremap va\| F\|v,

" Fake '/' as text object
nnoremap di/ T/d,
nnoremap da/ F/d,
nnoremap ci/ T/c,
nnoremap ca/ F/c,
nnoremap yi/ T/y,
nnoremap ya/ F/y,
nnoremap vi/ T/v,
nnoremap va/ F/v,

" Enable spellcheck when needed
autocmd FileType gitcommit setlocal spell textwidth=72
autocmd BufRead,BufNewFile {*.md,*.mkd} setlocal spell

" Rubocop. Ruby style checker.
let g:vimrubocop_config = '.rubocop.yml'

" JavaScript ES6 support
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" Tell vim you're editing SQL when using `\e` in psql
au BufRead /tmp/psql.edit.* set syntax=sql
