set packpath^=~/.vim
packadd minpac

" Add convenience commands for minpac
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

if has('nvim')
  call minpac#add('kassio/neoterm')
  call minpac#add('Shougo/deoplete.nvim')
  call minpac#add('fishbullet/deoplete-ruby', { 'type': 'opt' })
endif

"call minpac#add('SirVer/ultisnips', { 'type': 'opt' })

call minpac#add('mattn/emmet-vim', { 'type': 'opt' }) " Expand abbreviated code like Emmet, e.g. 'a>href' gets expanded.
call minpac#add('AndrewRadev/splitjoin.vim') " convert between single-line and multi-line blocks
call minpac#add('KurtPreston/vim-autoformat-rails', { 'type': 'opt' })
call minpac#add('aperezdc/vim-template') " Apply a template to new files
call minpac#add('chrisbra/csv.vim') " CSV support
call minpac#add('cloud8421/vim-neatstatus') " Add a nice status display
call minpac#add('craigemery/vim-autotag') " Automate ctags when editing source files
call minpac#add('easymotion/vim-easymotion') " Makes it easy to jump around in files
call minpac#add('elixir-lang/vim-elixir', { 'type': 'opt' })
call minpac#add('fatih/vim-go', { 'type': 'opt' })
call minpac#add('godlygeek/tabular', { 'type': 'opt' })
call minpac#add('honza/vim-snippets') 
call minpac#add('jeetsukumaran/vim-buffergator') " List navigation of buffers
call minpac#add('junegunn/fzf') " Fuzzy file finder
call minpac#add('junegunn/vim-easy-align')
call minpac#add('kana/vim-textobj-user') " required for nelstrom/vim-textobj-rubyblock
call minpac#add('kchmck/vim-coffee-script', { 'type': 'opt' }) " Coffeescript support
call minpac#add('mattn/gist-vim', { 'type': 'opt' }) " Support for GitHub gists
call minpac#add('mhinz/vim-signify') " show git (and other source control) diffs in a column
call minpac#add('mileszs/ack.vim') " Search recursively inside directories, e.g. `:Ack [options] {pattern} [{directories}]`
call minpac#add('nathanaelkane/vim-indent-guides') " Fancy indentation guides
call minpac#add('nelstrom/vim-textobj-rubyblock') " Add the concept of a ruby block to vim
call minpac#add('ngmy/vim-rubocop', { 'type': 'opt' }) " Rubocop support
call minpac#add('posva/vim-vue', { 'type': 'opt' }) " Vue.js support
call minpac#add('scrooloose/nerdtree') " Allow file system display and manipulation
call minpac#add('slim-template/vim-slim', { 'type': 'opt' })
call minpac#add('tmhedberg/matchit') " Makes extended % matching for HTML, LaTeX, and many other languages
call minpac#add('tpope/vim-abolish') " Work with word forms to support abbreviation, substitution and coercion
call minpac#add('tpope/vim-bundler', { 'type': 'opt' }) " Bundler support for vim, e.g. :Bundle etc.
call minpac#add('tpope/vim-dispatch') " Asynch execution of stuff you run via new :Make command
call minpac#add('tpope/vim-endwise') " Add the end to certain structures automatically, e.g. in Ruby, type 'do', get 'end'
call minpac#add('tpope/vim-fugitive') " Work with git
call minpac#add('tpope/vim-projectionist') " Support for projection files / semantic navigation in a project
call minpac#add('tpope/vim-rails', { 'type': 'opt' })
call minpac#add('tpope/vim-rake', { 'type': 'opt' })
call minpac#add('tpope/vim-rhubarb') " Work with GitHub, e.g. :gbrowse
call minpac#add('tpope/vim-sleuth', { 'type': 'opt' }) " Automatically adjust 'shiftwidth' and 'expandtab' heuristically based on the current file
call minpac#add('tpope/vim-surround') " Support for surrounding things, like braces or do…end
call minpac#add('tpope/vim-unimpaired') " Use [ and ] to access complementary pairs of mappings
call minpac#add('tpope/vim-vinegar') " Make split windows and project drawer plugins work together
call minpac#add('vim-ruby/vim-ruby', { 'type': 'opt' })
call minpac#add('vim-scripts/LanguageTool', { 'type': 'opt' }) " Check grammar via :LanguageToolCheck
call minpac#add('vim-scripts/tComment') " Toggle comments in various languages
call minpac#add('vim-syntastic/syntastic') " Linter / syntax checker

