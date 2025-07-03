get_user_config_dir() {
  if [ -z "$XDG_CONFIG_HOME" ]; then
    echo "$HOME/.config"
  else
    echo "$XDG_CONFIG_HOME"
  fi
}

get_dotfiles_dir() {
  echo "$HOME/.files"
}
