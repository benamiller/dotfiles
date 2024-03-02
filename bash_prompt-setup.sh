#!/usr/bin/env bash

# Remove existing symlinks
rm -rf ~/.bash_prompt

# Create symlinks in home directory
ln -s $(pwd)/bash_prompt.sh ~/.bash_prompt

# Define the files
BASH_PROMPT_SOURCE="source ~/.bash_prompt"
BASHRC="$HOME/.bashrc"

# Function to append line to .bashrc if it doesn't already exist
append_if_not_exist() {
  local line="$1"
  local file="$2"
  grep -qF -- "$line" "$file" || echo "$line" >> "$file"
}

# Append source lines if they don't exist
append_if_not_exist "$BASH_PROMPT_SOURCE" "$BASHRC"

echo "Updated .bashrc successfully for prompt."
