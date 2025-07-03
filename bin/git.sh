#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/utils/config.sh"

ensure_git_config_dir() {
  local git_config_dir="$(get_user_config_dir)/git"

  mkdir -p "$git_config_dir"

  echo "$git_config_dir"
}

setup_git_ignore_file() {
  local git_ignore_target_file="$GIT_CONFIG_DIR/ignore"
  local git_ignore_source_file="$(get_dotfiles_dir)/git/ignore"

  if [ -L "$git_ignore_target_file" ]; then
    echo "Git ignore file already exists at $git_ignore_target_file"
  else
    echo "Setting up git ignore file at $git_ignore_target_file"

    ln -s "$git_ignore_source_file" "$git_ignore_target_file"
  fi
}

GIT_CONFIG_DIR=$(ensure_git_config_dir)
setup_git_ignore_file
