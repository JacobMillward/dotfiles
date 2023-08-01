#!/bin/bash

################################################################################
# Script Name: configure_vscode.sh
# Description: Creates a symbolic link to the VSCode configuration file and installs extensions
################################################################################

# Set the source path
SRC_PATH="$(dirname "${BASH_SOURCE[0]}")/../vscode/settings.json"

# Check if the source file exists
if [[ ! -f "$SRC_PATH" ]]; then
    echo "VSCode configuration file not found at $SRC_PATH"
    exit 1
fi

# Check if the destination path is provided as an argument
if [[ -z "$1" ]]; then
    echo "Usage: configure_vscode.sh <destination_path>"
    exit 1
fi

# Set the destination path
DST_PATH="$1"

# Create a symbolic link to the source file
echo "Creating symbolic link to VSCode configuration..."
ln -sv "$SRC_PATH" "$DST_PATH"
echo -n "✔"

# Install extensions
echo "Installing VSCode extensions..."
while read extension; do
    echo "Installing $extension..."
    code --install-extension "$extension"
done < "$(dirname "${BASH_SOURCE[0]}")/../vscode/code_extensions"