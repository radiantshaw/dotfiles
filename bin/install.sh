#!/bin/bash

set -e

MISSING=()

for PACKAGE in "$@"; do
  if ! which "$PACKAGE" > /dev/null 2>&1; then
    MISSING+=("$PACKAGE")
  fi
done

if [[ ${#MISSING[@]} -eq 0 ]]; then
  echo "All packages already installed."
  exit 0
fi

echo "Installing missing packages: ${MISSING[*]}"

if [[ -f /etc/arch-release ]]; then
  sudo pacman -S --noconfirm "${MISSING[@]}"
else
  echo "Unsupported OS. Please install '${MISSING[*]}' manually."
  exit 1
fi
