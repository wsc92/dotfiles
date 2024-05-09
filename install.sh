#!/bin/bash
# Install System

# Change pacman.config
sudo rm /etc/pacman.conf &
sudo cp pacman.conf /etc/ &

#sleep
sleep 2

#install yay
source .install/required.sh
source .install/yay.sh
source .install/updatesystem.sh

sleep 2

#install packages
sudo pacman -S base-devel sddm alacritty qtile qtile-extras-git pyright nwg-look lua-language-server pavucontrol blueman clang udiskie github-cli btop neovim picom redshift rofi zellij rofi starship npm ripgrep ranger discord firefox nitrogen nemo flameshot xorg-xrandr lxqt-policykit cava obsidian nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git morgen burpsuite drawio sddm-sugar-dark
sleep 4

#enable sddm
sudo systemctl enable sddm &
sleep 4

#make directories and install theme
sudo cp default.conf /etc/sddm.conf.d/

# remove defaults and replace config files
rm ~/.bashrc &
cp bashrc ~/.bashrc &

rm -rf ~/.config/alacritty/ &
cp -r configs/alacritty/ ~/.config &

rm -rf ~/.config/nvim/ &
cp -r configs/nvim/ ~/config &

rm -rf ~/.config/picom/ &
cp -r configs/picom/ ~/.config &

rm -rf ~/.config/redshift/ &
cp -r configs/redshift/ ~/.config &

rm -rf ~/.config/rofi/ &
cp -r configs/rofi/ ~/.config &

rm -rf ~/.config/zellij/ &
cp -r configs/zellij/ ~/.config &

rm -rf ~/.config/starship.toml &
cp configs/starship.toml ~/.config &

rm -rf ~/.config/qtile/ &
cp -r configs/qtile ~/.config &

source .install/reboot.sh

