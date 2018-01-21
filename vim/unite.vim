let g:unite_data_directory='~/.vim/unite'
let g:unite_enable_start_insert = 1
let g:unite_prompt='🔎  '
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files=5000
let g:unite_split_rule = "botright"
let g:unite_winheight = 10
let g:unite_force_overwrite_statusline = 0

let g:unite_candidate_icon = '-'
" let g:unite_cursor_line_highlight = 'InsertCursor'
let g:unite_marked_icon = '+'

" mappings
nnoremap <silent> <C-p> :Unite -toggle -auto-resize -buffer-name=files file_rec/async:!<CR>
" nnoremap <C-p> :Unite file_rec/async<cr>

let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'

let s:unite_ignores = [
  \ '\.git', 'deploy', 'dist',
  \ '\.config', '\.cache',
  \ 'undo', 'tmp', 'backups',
  \ 'generated', 'build', 'images']

" call unite#custom#source('file_rec,file_rec/async,file_mru,file,buffer,grep',
"   \ 'ignore_pattern', unite#get_all_sources('file_rec')['ignore_pattern'] .
"   \ join(s:unite_ignores, '\|'))
"
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
