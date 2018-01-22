call minpac#add('tpope/vim-markdown', { 'type': 'opt' })
call minpac#add('jtratner/vim-flavored-markdown', { 'type': 'opt' })

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
  " Marked.app preview for Markdown syntax
augroup END

map <leader>m :silent !open % -a "$MARKDOWN_VIEWER_APP"<cr>:redraw!<cr>
