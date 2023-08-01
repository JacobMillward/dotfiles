#!/bin/bash

################################################################################
# Script Name: install_fonts.sh
# Description: Installs the Source Code Pro font using Homebrew on macOS
################################################################################

# Check if Homebrew is already installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not found!"
    exit 1
fi

# Check if Source Code Pro font is already installed
if brew list --cask font-source-code-pro >/dev/null 2>&1; then
    echo "Source Code Pro font already installed!"
    exit 0
else
    echo "Installing Source Code Pro font..."
    brew tap homebrew/cask-fonts && brew install --cask font-source-code-pro
    echo -n "✔"
fi
