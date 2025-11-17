VIM_CONFIG_DIR="$HOME/.vim"
VIM_DOT_DIR="$HOME/.files/tools/nvim"

ensure() {
  if [ ! -d "$VIM_CONFIG_DIR" ]; then
    mkdir "$VIM_CONFIG_DIR"
    echo "Created Vim configuration directory at $VIM_CONFIG_DIR"
  fi
}

link() {
  local source_file="$VIM_DOT_DIR/$1"
  local target_file="$VIM_CONFIG_DIR/$1"

  if [ -n "$2" ]; then
    target_file="$VIM_CONFIG_DIR/$2"
  fi

  if [ -e "$target_file" ] || [ -L "$target_file" ]; then
    rm -f "$target_file"
  fi

  ln -s "$source_file" "$target_file"
  echo "Linked $target_file to $source_file"
}

package() {
  if [ -d "$VIM_CONFIG_DIR/pack/minpac" ]; then
    echo "Minpac is already installed."
  else
    git clone https://github.com/k-takata/minpac.git "$VIM_CONFIG_DIR/pack/minpac/opt/minpac"
    nvim +PackUpdate +qall
  fi
}

case "$1" in
  ensure)
    ensure
    ;;
  link)
    link "$2" "$3"
    ;;
  package)
    package
    ;;
esac
