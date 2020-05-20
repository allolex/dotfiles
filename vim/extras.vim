let mapleader = ","

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Remap the q (default: macro record) button to no-op
nmap q <Nop>

" Remove buffer training wheels
set hidden

" Automatically reload file on change
set autoread

" Allow movement into blank space when making visual selections
set virtualedit=block

" Make split locations more intuitive
set splitbelow
set splitright

" Search highlighting goes away easily
:nnoremap <silent> <Enter> :nohlsearch<Bar>:echo<CR>

" Easy paste mode
set pastetoggle=<leader>pt

" Use par for paragraph formatting
" set formatprg=par\ -w66

" Strip trailing whitespace
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>


" Automatic setting of the executable bit
" http://vim.wikia.com/wiki/Setting_file_attributes_without_reloading_a_buffer
function! SetExecutableBit()
  let fname = expand("%:p")
  checktime
  execute "au FileChangedShell " . fname . " :echo"
  silent !chmod a+x %
  checktime
  execute "au! FileChangedShell " . fname
endfunction
command! Xbit call SetExecutableBit()
autocmd BufWritePost *.pl Xbit
autocmd BufWritePost *.bash Xbit
autocmd BufWritePost *.sh Xbit

" Completion
set complete=.,b,u,]

" NERDTree
map <leader>l :NERDTreeToggle<cr>

" Signify / Sy
" Mapping for jumping to the next or previous hunk.
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
" Mapping for toggling line highlighting for lines containing changes.
let g:signify_mapping_toggle_highlight = '<leader>gh'
" Toggle for current buffer
let g:signify_mapping_toggle = '<leader>gt'
" Colours
let g:signify_sign_color_inherit_from_linenr = 1
let g:signify_sign_color_ctermfg_add    = 118
let g:signify_sign_color_ctermfg_delete = 196
let g:signify_sign_color_ctermfg_change = 39
let g:signify_sign_color_ctermbg        = 232

" Cursor
" https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" CtrlP
nmap - :CtrlPClearCache<cr>

" More NERDTree customization
nmap <silent> <leader>3 :NERDTreeToggle<cr>

" buffergator
nmap <leader>b :BuffergatorToggle<cr>

" fugitive
nmap <leader>gb :gBlame<cr>

" airline
let g:airline_powerline_fonts = 1

" Convert {} to do…end.
" Use `cSB-` or `cS{-` when you're in a block. The reverse
" does not work.
" https://github.com/tpope/vim-surround/issues/193
autocmd FileType ruby let b:surround_45 = "do\n \r\nend"

" Tabularize
" The next line causes an error
" AddTabularPattern rails_align_migrations /[ ]/l0l0l0
" AddTabularPattern hash_keys /^[^:]*:\zs\s/l0

" Spelling
autocmd FileType gitcommit setlocal spell textwidth=72 " For git commits
autocmd BufRead,BufNewFile {*.md,*.mkd} setlocal spell " For Markdown files

source $HOME/.vim/spelling.vim

" Escape issue?
" cmap routesdoc <Esc>:perldo s\!^.*?\(PUT|POST|PATCH|GET|DELETE\)\\s+\([^\\(]+\).*?$!$1 $2!"<CR>
"
