#!/bin/bash

################################################################################
# Script Name: install_fish.sh
# Description: Installs Fish shell with Homebrew and sets it as the default shell
################################################################################

# Install Fish shell using Homebrew
echo "Installing Fish shell using Homebrew..."
brew install fish

# Add Fish shell to the list of allowed shells
echo "Adding Fish shell to the list of allowed shells..."
if ! grep -q "/usr/local/bin/fish" /etc/shells; then
    echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
fi
echo -n "✔"

# Set Fish shell as the default shell for the current user
echo "Setting Fish shell as the default shell for the current user..."
chsh -s /usr/local/bin/fish
echo -n "✔"