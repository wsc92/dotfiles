#!/bin/sh

#wallpapaer
xrandr -s 1920x1080 &
feh --bg-scale --randomize ~/wallpapers/* &
/usr/bin/lxqt-policykit-agent &
nm-applet &
picom &
blueman-applet &
pasystray &
redshift -c ~/.config/redshift/redshift.conf &
flameshot &
