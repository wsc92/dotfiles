#!/bin/bash

# Configuration
WALLPAPER_DIR="/home/cogent/wallpapers/"
MONITOR_PRIMARY="eDP-1"
MONITOR_SECONDARY="HDMI-A-1"

# Get wallpapers
wallpapers=("${WALLPAPER_DIR}"*.jpg)
wallpaper_count=${#wallpapers[@]}

if [ $wallpaper_count -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Get random indices
first=$((RANDOM % wallpaper_count))
second=$first

if [ $wallpaper_count -gt 1 ]; then
    while [ $first -eq $second ]; do
        second=$((RANDOM % wallpaper_count))
    done
fi

wallpaper_primary="${wallpapers[$first]}"
wallpaper_secondary="${wallpapers[$second]}"

# If hyprpaper is running, just change wallpapers
if pgrep -x "hyprpaper" >/dev/null; then
    hyprctl hyprpaper wallpaper "$MONITOR_PRIMARY,$wallpaper_primary"
    hyprctl hyprpaper wallpaper "$MONITOR_SECONDARY,$wallpaper_secondary"
else
    # First time setup - generate config and start hyprpaper
    {
        for wallpaper in "${wallpapers[@]}"; do
            echo "preload = $wallpaper"
        done
        echo "wallpaper = $MONITOR_PRIMARY,$wallpaper_primary"
        echo "wallpaper = $MONITOR_SECONDARY,$wallpaper_secondary"
    } >"/home/cogent/.config/hypr/hyprpaper.conf"

    hyprpaper &
fi
