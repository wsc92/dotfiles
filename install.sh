#!bin/bash
sudo pacman -Syu &
sudo pacman -S yay-git alacritty neovim picom redshift rofi zellij starship npm ripgrep ranger discord firefox nitrogen nemo flameshot xorg-xrandr lxqt-policykit &
rm ~/.bashrc &
cp bashrc ~/.bashrc &
rm -rf ~/.config/alacritty/ &
cp configs/alacritty/ ~/.config/ &
rm -rf ~/.config/nvim/ &
cp configs/nvim/ ~/config/ &
rm -rf ~/.config/picom/ &
cp configs/picom/ ~/.config/ &
rm -rf ~/.config/redshift/ &
cp configs/redshift/ ~/.config/ &
rm -rf ~/.config/rofi/ &
cp configs/rofi/ ~/.config/ &
rm -rf ~/.config/zellij/ &
cp configs/zellij/ ~/.config/ &
rm -rf ~/.config/starship.toml &
cp configs/starship.toml ~/.config/ &
rm -rf ~/.config/qtile/ &
cp configs/qtile/ ~/.config/ &
reboot &
