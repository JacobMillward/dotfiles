#!/usr/bin/env bash

# Your laptop display name - yours is eDP-2 based on your monitors.conf
LAPTOP_MONITOR="eDP-2"

# Count external monitors (anything that isn't the laptop screen)
EXTERNAL=$(hyprctl monitors | grep -c "^Monitor" )

if [[ "$1" == "close" ]]; then
    if [[ $EXTERNAL -gt 1 ]]; then
        # External monitors connected — just disable the laptop screen
        hyprctl keyword monitor "$LAPTOP_MONITOR, disable"
    else
        # No external monitors — suspend the system
        systemctl suspend
    fi
elif [[ "$1" == "open" ]]; then
    # Re-enable laptop screen with your resolution/scale from monitors.conf
    hyprctl keyword monitor "$LAPTOP_MONITOR,2560x1600@165.0,auto,1.6"
fi
