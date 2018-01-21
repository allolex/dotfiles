call minpac#add('tpope/vim-markdown', { 'type': 'opt' })
call minpac#add('jtratner/vim-flavored-markdown', { 'type': 'opt' })

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
