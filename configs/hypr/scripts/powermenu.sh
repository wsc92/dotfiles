#!/bin/bash

echo $XDG_SESSION_TYPE
if [ $XDG_SESSION_TYPE == "wayland" ]; then
	lockapp=swaylock
else
	lockapp=slock
fi
echo "Using $lockapp to lock the screen."

option1="  lock"
option2="  logout"
option3="  reboot"
option4="  power off"

options="$option1\n"
options="$options$option2\n"
options="$options$option3\n$option4"

choice=$(echo -e "$options"  | rofi -dmenu -i -no-show-icons -l 4 -width 30 -theme-str '@import "~/.config/rofi/config.rasi"' -p "Power")

case $choice in
	$option1)
		$lockapp ;;
	$option2)
		qtile cmd-obj -o cmd -f shutdown ;;
	$option3)
		systemctl reboot ;;
	$option4)
		systemctl poweroff ;;
esac


