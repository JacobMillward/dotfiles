#!/bin/bash

################################################################################
# Script Name: install_vscode.sh
# Description: Installs VSCode and creates a symbolic link to the configuration file on macOS
################################################################################

# Check if VSCode is already installed
if command -v code >/dev/null 2>&1; then
    echo "VSCode already installed!"
else
    # Install VSCode using Homebrew
    echo "Installing VSCode using Homebrew..."
    brew install --cask visual-studio-code
fi

# Run configure_vscode.sh
DST_PATH="$HOME/Library/Application Support/Code/User/"
"./$(dirname "${BASH_SOURCE[0]}")/../common/configure_vscode.sh" "$DST_PATH"