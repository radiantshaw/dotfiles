if [ -z "$XDG_CONFIG_HOME" ]; then
  XDG_CONFIG_HOME="$HOME/.config"
fi

GIT_CONFIG_DIR="$XDG_CONFIG_HOME/git"
GIT_DOT_DIR="$HOME/.files/tools/git"

ensure() {
  if [ ! -d "$GIT_CONFIG_DIR" ]; then
    mkdir "$GIT_CONFIG_DIR"
    echo "Created Git configuration directory at $GIT_CONFIG_DIR"
  fi
}

link() {
  local source_file="$GIT_DOT_DIR/$2"
  local target_file="$GIT_CONFIG_DIR/$1"

  if [ -e "$target_file" ]; then
    rm -f "$target_file"
  fi

  ln -s "$source_file" "$target_file"
  echo "Linked $target_file to $source_file"
}

case "$1" in
  ensure)
    ensure
    ;;
  link)
    link "$2" "$3"
    ;;
esac
