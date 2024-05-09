#!/bin/sh

#wallpapaer
xrandr -s 1920x1080 &
nitrogen ~/wallpapers/ &
/usr/bin/lxqt-policykit-agent &
nm-applet &
picom &
blueman-applet &
pasystray &
redshift -c ~/.config/redshift/redshift.conf &
flameshot &
