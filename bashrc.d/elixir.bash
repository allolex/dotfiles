export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"
alias exenv-install-latest="exenv install \$(exenv install -l | sort -n | egrep -v 'rc|Docs' | tail -1)"
