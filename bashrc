function handle_error () {
  if [ "$?" != "0" ]; then
    echo -e "\n\n$1"
  fi
}

function load_and_handle_errors () {
    source "$1" 2>&1
    handle_error "There was a problem while sourcing $1\n\n\t$SOURCE_OUTPUT"
}

function load_homebrew_command_completions {
  for f in /usr/local/etc/bash_completion.d/*.bash; do
    load_and_handle_errors $f
  done
  unset f
}

function source_modules {
  for f in $HOME/.bashrc.d/*.bash; do
    load_and_handle_errors $f
  done
  unset f
}

function configure_rbenv {
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
}

function tmuxify_command_prompt {
  export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I_#P") "$PWD")'
}

function configure_editor {
  export EDITOR=/usr/local/bin/vim
}

export HOSTNAME=$(hostname | cut -d\. -f1)

load_homebrew_command_completions
source_modules
configure_editor
tmuxify_command_prompt

eval "$(direnv hook $0)"

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/bin:/usr/local/opt/sbin:$PATH
configure_rbenv

# added by travis gem
[ -f /Users/damon/.travis/travis.sh ] && source /Users/damon/.travis/travis.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
