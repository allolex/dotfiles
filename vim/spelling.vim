" Spelling in a few languages
map <leader>0gb :setlocal spell spelllang=en_gb<CR>
map <leader>0fr :setlocal spell spelllang=fr_fr<CR>
map <leader>0us :setlocal spell spelllang=en_us<CR>
map <leader>0de :setlocal spell spelllang=de_de<CR>
map <leader>0es :setlocal spell spelllang=es_mx<CR>
map <leader>0it :setlocal spell spelllang=it_it<CR>

" Toggle spelling
nmap <silent> <leader>0 :set spell!<CR>

" Highlighting
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

autocmd BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
