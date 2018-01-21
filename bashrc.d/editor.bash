export EDITOR=nvim
export VISUAL=nvim

export VIMDATA="${HOME}/.local/share/nvim"
export VIMCONFIG="${HOME}/.config/nvim"
export FZF_DEFAULT_COMMAND='rg --files'

alias gitmod="export GIT_MODIFIED=\"\$(git status -s | cut -c 4- | paste -s -d' ' -)\""
alias vimod="export GIT_MODIFIED=\"\$(git status -s | cut -c 4- | grep -v ' -> ' | paste -s -d' ' -)\"; \${EDITOR} \${GIT_MODIFIED}"
alias vim-git-modified="export GIT_MODIFIED=\"\$(git status -s | cut -c 4- | grep -v ' -> ' | paste -s -d' ' -)\"; \${EDITOR} \${GIT_MODIFIED}"
alias vim-git-conflict="export GIT_CONFLICTS=\"\$(git status -s | grep 'UU' | cut -c 4- | grep -v ' -> ' | paste -s -d' ' -)\"; \${EDITOR} \${GIT_CONFLICTS}"
