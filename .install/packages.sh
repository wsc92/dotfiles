#!/bin/bash
sudo pacman -S base-devel sddm alacritty kitty unzip nmap alsa-utils qtile pyright nwg-look metasploit lua-language-server \
	pavucontrol blueman wireshark-qt clang fish gcc gdb eza udiskie github-cli btop neovim picom redshift rofi zellij rofi ruby \
	starship npm ripgrep fzf feh ranger discord firefox nitrogen nemo samba ghidra dunst flameshot xorg-xrandr lxqt-policykit \
	pasystray obsidian zathura nerd-fonts -y
sleep 4

yay -S archlinux-tweak-tool-git wget morgen burpsuite zenmap sddm-sugar-dark qtile-extras-git
sleep 4