"Ctrlp configuration
let g:ctrlp_working_path_mode = 2
set wildignore+=*/.hg/*,*/.svn/*,*/vendor/cache/*,*/public/system/*,*/tmp/*,*/log/*,*/.git/*,*/.jhw-cache/*,*/solr/data/*,*/node_modules/*,*/.DS_Store,*/*.beam
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|beam))$'

" FZF configuration
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :<C-u>FZF<CR>

if executable('rg')
  set grepprg=rg\ --no-heading\ --color\ never
  let g:ctrlp_user_command='rg %s -l -g "" --color never'
endif

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" See discussion at: https://github.com/thoughtbot/dotfiles/commit/f854c8d8ef08ab0f80639e0219f9800f0246fb90
" if executable('ag')
"   set grepprg=ag\ --nogroup\ --nocolor
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif

" NERDTree customization
let NERDTreeShowHidden=0
let NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2


" junegunn/vim-easy-align
xmap ga<Plug>(EasyAlign)
nmap ga<Plug>(EasyAlign)

