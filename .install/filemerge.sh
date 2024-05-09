#!/bin/bash
# remove defaults and replace config files
cp -r ~/dotfiles/wallpapers ~

rm ~/.bashrc &
cp ~/dotfiles/bashrc ~/.bashrc &

rm -r ~/.config/alacritty &
cp -r ~/dotfiles/configs/alacritty ~/.config &

rm -r ~/.config/nvim &
cp -r ~/dotfiles/configs/nvim ~/.config &

rm -rf ~/.config/picom &
cp -r ~/dotfiles/configs/picom ~/.config &

rm -rf ~/.config/redshift &
cp -r ~/dotfiles/configs/redshift ~/.config &

rm -rf ~/.config/rofi &
cp -r ~/dotfiles/configs/rofi ~/.config &

rm -rf ~/.config/zellij &
cp -r ~/dotfiles/configs/zellij ~/.config &

rm -rf ~/.config/starship.toml &
cp ~/dotfiles/configs/starship.toml ~/.config &

rm -r ~/.config/qtile &
cp -r ~/dotfiles/configs/qtile ~/.config &


