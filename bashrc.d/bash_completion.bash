function load_homebrew_command_completions {
  for f in /usr/local/etc/bash_completion.d/*.bash; do
    load_and_handle_errors $f
  done
  unset f
}

load_homebrew_command_completions
