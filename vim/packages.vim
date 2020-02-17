call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'kassio/neoterm'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'fishbullet/deoplete-ruby'

let g:deoplete#enable_at_startup = 1

""" LANGUAGE

" Coffeescript support
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

" CSV support
Plug 'chrisbra/csv.vim', { 'for': 'csv' }

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }


" Go
Plug 'fatih/vim-go', { 'for': 'go' }

" Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown' }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake'
Plug 'KurtPreston/vim-autoformat-rails', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' } " Add the end to certain structures automatically, e.g. in Ruby, type 'do', get 'end'

" slim
Plug 'slim-template/vim-slim', { 'for': 'slim' }

" Vue.js support
Plug 'posva/vim-vue'

""" DOCUMENTATION

" Dash
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

" Expand abbreviated code like Emmet, e.g. 'a>href' gets expanded.
Plug 'mattn/emmet-vim'

" convert between single-line and multi-line blocks
Plug 'AndrewRadev/splitjoin.vim'

" Apply a template to new files
Plug 'aperezdc/vim-template'

" Add a nice status display
Plug 'cloud8421/vim-neatstatus'

" Automate ctags when editing source files
Plug 'craigemery/vim-autotag'

" Makes it easy to jump around in files
Plug 'easymotion/vim-easymotion'

""" ALIGNMENT / TABLE FORMATTING

" Manipulate tabular formatting in text/code 
Plug 'godlygeek/tabular'

" Easy alignment
Plug 'junegunn/vim-easy-align'

" Fancy indentation guides
Plug 'nathanaelkane/vim-indent-guides'

" Code snippet support
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'

" List navigation of buffers
Plug 'jeetsukumaran/vim-buffergator'

" Fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Distraction-free writing mode (text focus mode)
Plug 'junegunn/goyo.vim'

" Add the concept of a ruby block to vim
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Support for GitHub gists
Plug 'mattn/gist-vim'

" show git (and other source control) diffs in a column
Plug 'mhinz/vim-signify'

" Search recursively inside directories, e.g. `:Ack [options] {pattern} [{directories}]`
Plug 'mileszs/ack.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Allow file system display and manipulation
Plug 'scrooloose/nerdtree'

" Makes extended % matching for HTML, LaTeX, and many other languages
Plug 'tmhedberg/matchit'

" Work with word forms to support abbreviation, substitution and coercion
Plug 'tpope/vim-abolish'

" Asynch execution of stuff you run via new :Make command
Plug 'tpope/vim-dispatch'

" Work with git
Plug 'tpope/vim-fugitive'

" Support for projection files / semantic navigation in a project
Plug 'tpope/vim-projectionist'

" Work with GitHub, e.g. :gbrowse
Plug 'tpope/vim-rhubarb'

" Automatically adjust 'shiftwidth' and 'expandtab' heuristically based on the current file
Plug 'tpope/vim-sleuth'

" Support for surrounding things, like braces or do…end
Plug 'tpope/vim-surround'

" Use [ and ] to access complementary pairs of mappings
Plug 'tpope/vim-unimpaired'

" Make split windows and project drawer plugins work together
Plug 'tpope/vim-vinegar'

" Check grammar via :LanguageToolCheck
Plug 'vim-scripts/LanguageTool'

" Toggle comments in various languages
Plug 'vim-scripts/tComment'

" Linter / syntax checker
Plug 'vim-syntastic/syntastic'

call plug#end()
