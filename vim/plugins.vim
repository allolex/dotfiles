" Enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

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

" ACK configuration
if executable('rg')
  set grepformat^=%f:%l:%c:%m
  let g:ackprg = 'rg\ --vimgrep'
endif

" NERDTree customization
let NERDTreeShowHidden=0
let NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2

" junegunn/vim-easy-align
" These are buggy
" xmap ga<Plug>(EasyAlign)
" nmap ga<Plug>(EasyAlign)
