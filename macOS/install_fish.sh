#!/bin/bash

################################################################################
# Script Name: install_fish.sh
# Description: Installs Fish shell with Homebrew and sets it as the default shell
################################################################################

# Check if Fish shell is already installed
if command -v fish >/dev/null 2>&1; then
    echo "Fish shell already installed!"
else
    # Install Fish shell using Homebrew
    echo "Installing Fish shell using Homebrew..."
    brew install fish
    echo -n "✔"
fi

BREW_PREFIX=$(brew --prefix)
FISH_PATH="$BREW_PREFIX/bin/fish"

# Check if Fish shell is already in the list of allowed shells
if grep -q "$FISH_PATH" /etc/shells; then
    echo "Fish shell already in the list of allowed shells!"
else
    # Add Fish shell to the list of allowed shells
    echo "Adding Fish shell to the list of allowed shells..."
    echo "$FISH_PATH" | sudo tee -a /etc/shells
    echo -n "✔"
fi

# Check if Fish shell is already the default shell for the current user
if [[ "$(dscl . -read /Users/$(whoami) UserShell | awk '{print $2}')" == "$FISH_PATH" ]]; then
    echo "Fish shell already the default shell for the current user!"
else
    # Set Fish shell as the default shell for the current user
    echo "Setting Fish shell as the default shell for the current user..."
    chsh -s "$FISH_PATH"
fi
    echo -n "✔"