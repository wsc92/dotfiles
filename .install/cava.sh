#!/bin/bash
sudo pacman -Syu
sudo pacman -S fftw ncurses alsa-lib iniparser autoconf-archive pkgconf -y
yay -S cava-git
