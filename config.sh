#!/usr/bin/env bash

set -euo pipefail

DOTFILES=(.gitconfig .gitignore .zshrc)
DOTFILES_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

for dotfile in "${DOTFILES[@]}"; do
    cp "$DOTFILES_DIR/$dotfile" "$HOME/$dotfile"
done

mkdir -p "$HOME/.config"
cp "$DOTFILES_DIR/starship.toml" "$HOME/.config/starship.toml"
