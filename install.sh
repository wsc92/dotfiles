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
sudo pacman -S base-devel sddm alacritty kitty unzip nmap qtile pyright nwg-look metasploit lua-language-server pavucontrol blueman wireshark-qt clang gcc gdb eza udiskie github-cli btop neovim picom redshift rofi zellij rofi ruby starship npm ripgrep fzf feh ranger discord firefox nitrogen nemo samba dunst flameshot xorg-xrandr lxqt-policykit pasystray obsidian nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git wget morgen burpsuite sddm-sugar-dark qtile-extras-git
sleep 4

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
