function tmuxify_command_prompt {
  export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I_#P") "$PWD")'
}

tmuxify_command_prompt
