#!/usr/bin/env bash

# Remove existing symlinks
rm -rf ~/.aliases

# Create link
ln -s $(pwd)/aliases.sh ~/.aliases

ALIASES_SOURCE="source ~/.aliases"
BASHRC="$HOME/.bashrc"

append_if_not_exist() {
  local line="$1"
  local file="$2"
  grep -qF -- "$line" "$file" || echo "$line" >> "$file"
}

# Append source lines if they don't exist
append_if_not_exist "$ALIASES_SOURCE" "$BASHRC"

echo "Updated .bashrc successfully with aliases."
