#!/usr/bin/bash

# Array of packages to install
PACKAGES=(
    hyprland
    hyprpaper
    nerd-fonts
    neovim
    sddm
    thunar
    tmux
    alacritty
    kitty
    redshift
    lxqt-policykit
    fd
    luarocks
    unzip
    npm
    imagemagick
    ghostscript
    tectonic
    ghostscript
    tectonic
    viu
    chafa
    ueberzug
    waybar
    wofi
    dunst
    udiskie
    flameshot
    fish
    starship
    cbatticon
    blueman
    python
    zoxide
    fzf
    npm
    ripgrep
    noto-fonts-emoji
    less
    man
)

# Function to check if command succeeded
check_status() {
    if [ $? -eq 0 ]; then
        echo "✓ $1 completed successfully"
    else
        echo "✗ Error during $1"
        exit 1
    fi
}

# Main installation
echo "Installing packages..."
sudo pacman -S "${PACKAGES[@]}"
check_status "Package installation"

# Create backup of existing config if it exists
if [ -d "$HOME/.config" ]; then
    echo "Backing up existing config..."
    timestamp=$(date +%Y%m%d_%H%M%S)
    cp -r "$HOME/.config" "$HOME/.config_backup_$timestamp"
    check_status "Config backup"
fi

# Copy wallpapers
echo "Copying wallpapers..."
cp -rf wallpapers/ "$HOME/"
check_status "Wallpaper copy"

# Move configs
echo "Moving config files..."
mv configs/ "$HOME/.config/"
check_status "Config move"

echo "Installation completed successfully!"
