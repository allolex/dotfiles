function handle_error () {
  if [ "$?" != "0" ]; then
    echo -e "\n\n$1"
  fi
}

function load_and_handle_errors () {
    source "$1" 2>&1
    handle_error "There was a problem while sourcing $1\n\n\t$SOURCE_OUTPUT"
}

function source_modules {
  for f in $HOME/.bashrc.d/*.bash; do
    load_and_handle_errors $f
  done
  unset f
}

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/bin:/usr/local/opt/sbin:$PATH

export HOSTNAME=$(hostname | cut -d\. -f1)

source_modules

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/bin:/usr/local/opt/sbin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source $(brew --prefix asdf)/asdf.sh

