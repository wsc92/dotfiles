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
sudo pacman -S base-devel sddm alacritty kitty unzip nmap qtile pyright nwg-look lua-language-server pavucontrol blueman wireshark-qt clang gcc gdb eza udiskie github-cli btop neovim picom redshift rofi zellij rofi starship npm ripgrep fzf ranger discord firefox nitrogen nemo flameshot xorg-xrandr lxqt-policykit pasystray obsidian nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git morgen burpsuite drawio sddm-sugar-dark qtile-extras-git
sleep 4

#enable sddm
sudo systemctl enable sddm &
sleep 4

source .install/cava.sh
sleep 4

#make directories and install theme
source .install/sddm.sh
source .install/type.sh
source .install/filemerge.sh
# source .install/python.sh

sleep 4

source .install/reboot.sh

