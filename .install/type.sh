#!/bin/sh

# Run upower to check battery charge level.

LEVEL="$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}' | sed 's/\%//g')"

if [ $LEVEL -le 100 ]; then

    echo "Device is equipped with a battery and may be a laptop."
    cp ~/dotfiles/type/laptop.py ~/dotfiles/configs/qtile/bar.py

else
    echo "Device is NOT equipped with a batter and is likely a desktop."
    cp ~/dotfiles/type/desktop.py ~/dotfiles/configs/qtile/bar.py

fi

