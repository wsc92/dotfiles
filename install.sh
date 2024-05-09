#!/bin/bash
# Install System
#

#sleep
sleep 2

#install yay
source .install/required.sh
source .install/yay.sh
source .install/updatesystem.sh

sleep 2

#install packages
sudo pacman -S base-devel sddm alacritty unzip qtile pyright nwg-look lua-language-server pavucontrol blueman wireshark-qt clang gcc gdb eza udiskie github-cli btop neovim picom redshift rofi zellij rofi starship npm ripgrep ranger discord firefox nitrogen nemo flameshot xorg-xrandr lxqt-policykit obsidian nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git morgen burpsuite drawio sddm-sugar-dark qtile-extras-git cava
sleep 4

#enable sddm
sudo systemctl enable sddm &
sleep 4


#make directories and install theme
source .install/sddm.sh
source .install/filemerge.sh

sleep 4

source .install/reboot.sh

