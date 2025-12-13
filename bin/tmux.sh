TMUX_DOT_DIR="$HOME/.files/tools/tmux"

link() {
  local source_file="$TMUX_DOT_DIR/$2"
  local target_file="$HOME/$1"

  if [ -e "$target_file" ] || [ -L "$target_file" ]; then
    rm -f "$target_file"
  fi

  ln -s "$source_file" "$target_file"
  echo "Linked $target_file to $source_file"
}

case "$1" in
  link)
    link "$2" "$3"
    ;;
esac

