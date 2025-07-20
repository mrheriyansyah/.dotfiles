#!/bin/sh

# ------------------------------
# Close running waybar
# ------------------------------

killall waybar

# ------------------------------
# Reload waybar configuration
# ------------------------------

waybar &
