#!/bin/sh

#wallpapaer
xrandr -s 1920x1080 &
feh --bg-scale --randomize ~/wallpapers/* &
/usr/bin/lxqt-policykit-agent &
nm-applet &
picom &
pasystray &
blueman-applet &
LEVEL="$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}' | sed 's/\%//g')"

if [ $LEVEL -le 100 ]; then
	notify-send "Laptop" &
	cbatticon &
else
	notify-send "Desktop" &
fi
redshift -c ~/.config/redshift/redshift.conf &
flameshot &
morgen &
