call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'kassio/neoterm'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  Plug 'neoclide/coc.nvim', { 'branch': 'release'}
  " Plug 'hyhugh/coc-erlang_ls', { 'do': 'yarn install --frozen-lockfile' }
  " Plug 'dense-analysis/ale'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/denite.nvim'

let g:deoplete#enable_at_startup = 1

""" LANGUAGE

" General-purpose formatters
Plug 'sbdchd/neoformat'

" Coffeescript support
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

" CSV support
Plug 'chrisbra/csv.vim', { 'for': 'csv' }

" Elixir
Plug 'mmorearty/elixir-ctags', { 'for': 'elixir' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }

" Plug 'slashmili/alchemist', { 'for': 'elixir' }

" Go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown' }

" Python
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'python-mode/python-mode'

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake'
Plug 'KurtPreston/vim-autoformat-rails', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
" Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby' }
Plug 'takkii/Bignyanco', { 'for': 'ruby' }
Plug 'ruby-formatter/rufo-vim', { 'for': 'ruby' }

" Rust
Plug 'racer-rust/vim-racer'

" slim
Plug 'slim-template/vim-slim', { 'for': 'slim' }

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

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
" Plug 'craigemery/vim-autotag', { 'commit': '001aa5de7b844779bee67764d662cbd6935b546e' }

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

" Block end completion for Ruby, elixir and others
Plug 'tpope/vim-endwise'

call plug#end()
