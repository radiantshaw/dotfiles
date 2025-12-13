if [ -z "$XDG_CONFIG_HOME" ]; then
  XDG_CONFIG_HOME="$HOME/.config"
fi

NVIM_CONFIG_DIR="$XDG_CONFIG_HOME/nvim"
NVIM_DOT_DIR="$HOME/.files/tools/nvim"

ensure() {
  if [ ! -d "$NVIM_CONFIG_DIR" ]; then
    mkdir "$NVIM_CONFIG_DIR"
    echo "Created Neovim configuration directory at $NVIM_CONFIG_DIR"
  fi
}

link() {
  local link="$1"

  local source_file="$NVIM_DOT_DIR/$link"
  local target_file="$NVIM_CONFIG_DIR/$link"

  if [ -e "$target_file" ] || [ -L "$target_file" ]; then
    rm -f "$target_file"
  fi

  ln -s "$source_file" "$target_file"
  echo "Linked $target_file to $source_file"
}

package() {
  if [ -d "$NVIM_CONFIG_DIR/pack/minpac" ]; then
    echo "Minpac is already installed."
  else
    git clone https://github.com/k-takata/minpac.git "$NVIM_CONFIG_DIR/pack/minpac/opt/minpac"
    nvim +PackUpdate +qall
  fi
}

case "$1" in
  ensure)
    ensure
    ;;
  link)
    link "$2"
    ;;
  package)
    package
    ;;
esac
