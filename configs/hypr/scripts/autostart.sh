#!/bin/sh
# autostart.sh

# Setup basic logging
LOGFILE="$HOME/.local/share/autostart.log"
echo "=== Autostart begun $(date) ===" >"$LOGFILE"

# Helper function - logs and launches service
start_service() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "[ERROR] $1 not found" >>"$LOGFILE"
        notify-send "Autostart" "$1 not installed" &
        return
    fi
    echo "[START] $1" >>"$LOGFILE"
    "$@" &
}

# Essential UI
start_service waybar
start_service /usr/bin/lxqt-policykit-agent

# System tray apps
start_service nm-applet
start_service blueman-applet
start_service udiskie

# Battery handling
if upower -e | grep -q BAT; then
    LEVEL="$(upower -i "$(upower -e | grep 'BAT' | head -n1)" | grep -E "percentage" | awk '{print $2}' | sed 's/%//g')"
    notify-send "Laptop" "Battery: ${LEVEL}%" &
    start_service cbatticon
else
    notify-send "Desktop" &
fi

# Additional utilities
[ -f ~/.config/redshift/redshift.conf ] && start_service redshift -c ~/.config/redshift/redshift.conf
start_service flameshot

echo "=== Autostart completed $(date) ===" >>"$LOGFILE"
