#!/bin/bash
sudo pacman -S base-devel sddm alacritty kitty unzip nmap rkhunter clamav alsa-utils zoxide hyprland hyprpaper pyright nwg-look metasploit lua-language-server \
    pavucontrol blueman wireshark-qt clang fish gcc python gdb noto-fonts-emoji eza udiskie github-cli btop neovim picom redshift wofi tmux ruby \
    starship npm ripgrep fzf feh slock vscode cbatticon audacity ranger discord firefox thunar samba ghidra dunst flameshot xorg-xrandr lxqt-policykit \
    pasystray cmus gedit steam cloc obsidian zathura nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git wget morgen burpsuite ida-free zenmap sddm-sugar-dark -y
yay -S drawio-desktop -y
sleep 4
