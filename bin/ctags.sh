if [ -z "$XDG_CONFIG_HOME" ]; then
  XDG_CONFIG_HOME="$HOME/.config"
fi

CTAGS_CONFIG_DIR="$XDG_CONFIG_HOME/ctags"
CTAGS_DOT_DIR="$HOME/.files/tools/ctags"

ensure() {
  if [ ! -d "$CTAGS_CONFIG_DIR" ]; then
    mkdir "$CTAGS_CONFIG_DIR"
    echo "Created CTags configuration directory at $CTAGS_CONFIG_DIR"
  fi
}

link() {
  local source_file="$CTAGS_DOT_DIR/$2"
  local target_file="$CTAGS_CONFIG_DIR/$1"

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

