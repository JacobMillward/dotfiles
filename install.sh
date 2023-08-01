#!/bin/bash

################################################################################
# Script Name: install.sh
# Description: Installs dotfiles on macOS or Linux
# Author: Jacob Millward
################################################################################

function install_macos {
    # macOS specific installation instructions
    echo "Running macOS dotfiles installation..."
    run_scripts \
        "macOS\install_brew.sh" \
        "script2.sh" \
        "script3.sh"
}

function install_linux {
    # Linux specific installation instructions
    echo "Linux support is stubbed; not currently functional"
}

function run_scripts {
    # Loop through the list of scripts
    for script in "$@"; do
        # Check if script exists and is executable
        if [[ -x "$script" && -f "$script" ]]; then
            "./$script"
        else
            echo "Script $script not found or not executable!"
        fi
    done
}

os_name="$(uname -s)"

if [[ "$os_name" == "Darwin" ]]; then
    install_macos
elif [[ "$os_name" == "Linux" ]]; then
    install_linux
else
    echo "Unsupported operating system: $os_name"
    exit 1
fi