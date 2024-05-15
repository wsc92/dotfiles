#!/bin/bash
# Install System
#
source .install/pac.sh
#sleep
sleep 2

#install yay
source .install/required.sh
source .install/yay.sh

sleep 4

sudo pacman -Syu

sleep 4

#install packages
source .install/packages.sh

#enable sddm
sudo systemctl enable sddm &
sleep 4

source .install/cava.sh
sleep 4

source .install/editor.sh
#make directories and install theme
source .install/sddm.sh
source .install/type.sh
cp -r ~/dotfiles/wallpapers ~
source .install/file.sh
# source .install/python.sh

sleep 4

source .install/reboot.sh
