call minpac#add('elixir-lang/vim-elixir')
call minpac#add('fatih/vim-go')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('posva/vim-vue')
call minpac#add('tpope/vim-rails')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('slim-template/vim-slim')

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
