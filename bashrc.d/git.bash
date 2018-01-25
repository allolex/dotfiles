source /usr/local/etc/bash_completion.d/git-prompt.sh

export GIT_VISUALISATION_APP="/Applications/Tower.app/Contents/MacOS/gittower"

alias g='git status -sb'

alias gv='git viz'

alias ga='git add'
alias gaa='git add .'

alias gb='git branch'

alias gcob='git checkout'
alias gcob='git checkout -b'

alias gc='git cm'
alias gca='git cm --amend'
alias gcv='git cm --no-verify'

alias gd='git diff --color-words'
alias gdc='git diff --cached -w'
alias gdv='git diff'
alias gdw='git diff --no-ext-diff --word-diff'

alias gf='git fetch'
alias gfa='git fetch --all'

alias gh='git hist'

alias gl='git log --oneline --decorate'

alias gp='git pull'
alias gpp='git pull --rebase && git push'
alias gpr='git pull --rebase'

alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'

alias gt='git tag'
