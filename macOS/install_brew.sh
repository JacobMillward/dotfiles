#!/bin/bash

################################################################################
# Script Name: install_brew.sh
# Description: Installs Homebrew package manager on macOS
################################################################################

# Check if Homebrew is already installed
if command -v brew >/dev/null 2>&1; then
    echo "Homebrew already installed!"
    exit 0
fi

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"