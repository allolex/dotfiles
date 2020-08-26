export EDITOR=nvim
export VISUAL=nvim
alias vim="printf '\e]1;%s\a' 'Editor' && nvim"

export VIMDATA="${HOME}/.local/share/nvim"
export VIMCONFIG="${HOME}/.config/nvim"
export FZF_DEFAULT_COMMAND='rg --files'

alias gitmod="export GIT_MODIFIED=\"\$(git status -s | cut -c 4- | paste -s -d' ' -)\""
alias vim-git-modified="export GIT_MODIFIED=\"\$(git status -s | cut -c 4- | grep -v ' -> ' | paste -s -d' ' -)\"; \${EDITOR} \${GIT_MODIFIED}"
alias vim-git-conflicts="export GIT_CONFLICTS=\"\$(git status -s | egrep '^UU ' | cut -c 4- | grep -v ' -> ' | paste -s -d' ' -)\"; \${EDITOR} \${GIT_CONFLICTS}"
alias vimod=vim-git-modified
alias vicon=vim-git-conflicts
