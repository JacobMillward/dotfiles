#!/bin/bash

################################################################################
# Script Name: configure_vscode.sh
# Description: Copies VSCode configuration file to the correct location
################################################################################

# Set the source and destination paths
SRC_PATH="$(dirname "${BASH_SOURCE[0]}")/../vscode/settings.json"
DST_PATH="$HOME/Library/Application Support/Code/User/settings.json"

# Check if the source file exists
if [[ ! -f "$SRC_PATH" ]]; then
    echo "VSCode configuration file not found at $SRC_PATH"
    exit 1
fi

echo "Copying VSCode configuration..."
cp "$SRC_PATH" "$DST_PATH"
echo -n "✔"