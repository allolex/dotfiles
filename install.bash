HOSTNAME=$(hostname)

cd "$HOME" || echo "Could not cd to $HOME" && exit

ln -s "$HOME/.dotfiles/asdfrc" .asdfrc
ln -s "$HOME/.dotfiles/bashrc" .bashrc
ln -s "$HOME/.dotfiles/bash_profile" .bash_profile
ln -s "$HOME/.dotfiles/bashrc.d" .bashrc.d
ln -s "$HOME/.dotfiles/bin" .bin
ln -s "$HOME/.dotfiles/config" .config
ln -s "$HOME/.dotfiles/envrc" .envrc
ln -s "$HOME/.dotfiles/gitignore_global" .gitignore_global
ln -s "$HOME/.dotfiles/inputrc" .inputrc
ln -s "$HOME/.dotfiles/tool-versions" .tool-versions
ln -s "$HOME/.dotfiles/vim" .vim

# What about pric
GITCONFIG_FOR_HOST="${HOME}/.dotfiles/gitconfig_${HOSTNAME}"
if [[ -f "$GITCONFIG_FOR_HOST" ]]; then 
  ln -s "$GITCONFIG_FOR_HOST" .gitconfig || echo "Could not link $GITCONFIG_FOR_HOST."
else 
  echo "$GITCONFIG_FOR_HOST does not exist. You will need it for git customization"
  ls -1 ${HOME}/.dotfiles/gitconfig*
fi
