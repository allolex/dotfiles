augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
  " Marked.app preview for Markdown syntax
  map <leader>m :silent !open % -a "$MARKDOWN_VIEWER_APP"<cr>:redraw!<cr>:Goyo 82<cr>
augroup END

