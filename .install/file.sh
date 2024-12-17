if test -e ~/.bashrc; then
    echo "bashrc exists... replacing!"
    rm ~/.bashrc
    cp ~/dotfiles/bashrc ~/.bashrc
else
    echo "bashrc does not exist... creating!"
    cp ~/dotfiles/bashrc ~/.bashrc
fi

if test -e /etc/dunst/dunstrc; then
    echo "dunst config exists... replacing!"
    sudo rm /etc/dunst/dunstrc
    sudo cp ~/dotfiles/dunstrc /etc/dunst
else
    echo "dunst config does not exist... creating!"
    sudo cp ~/dotfiles/dunstrc /etc/dunst
fi

if test -d ~/.config/alacritty; then
    echo "alacritty exists... replacing!"
    rm -r ~/.config/alacritty
    cp -r ~/dotfiles/configs/alacritty ~/.config
else
    echo "alacritty does not exist... creating"
    cp -r ~/dotfiles/configs/alacritty ~/.config
fi

if test -d ~/.config/fish; then
    echo "fish exists... replacing!"
    rm -r ~/.config/fish
    cp -r ~/dotfiles/configs/fish ~/.config
else
    echo "fish does not exist... creating"
    cp -r ~/dotfiles/configs/fish ~/.config
fi

if test -d ~/.config/kitty; then
    echo "kitty exists... replacing!"
    rm -r ~/.config/kitty
    cp -r ~/dotfiles/configs/kitty ~/.config
else
    echo "kitty does not exist... creating"
    cp -r ~/dotfiles/configs/kitty ~/.config
fi

if test -d ~/.config/nvim; then
    echo "nvim exists... replacing!"
    rm -r ~/.config/nvim
    cp -r ~/dotfiles/configs/nvim ~/.config
else
    echo "nvim does not exist... creating"
    cp -r ~/dotfiles/configs/nvim ~/.config
fi

if test -d ~/.config/redshift; then
    echo "redshift exists... replacing!"
    rm -r ~/.config/redshift
    cp -r ~/dotfiles/configs/redshift ~/.config
else
    echo "redshift does not exist... creating"
    cp -r ~/dotfiles/configs/redshift ~/.config
fi

if test -d ~/.config/wofi; then
    echo "rofi exists... replacing!"
    rm -r ~/.config/wofi
    cp -r ~/dotfiles/configs/wofi ~/.config
else
    echo "rofi does not exist... creating"
    cp -r ~/dotfiles/configs/wofi ~/.config
fi

if test -d ~/.config/hypr; then
    echo "rofi exists... replacing!"
    rm -r ~/.config/hypr
    cp -r ~/dotfiles/configs/hypr ~/.config
else
    echo "rofi does not exist... creating"
    cp -r ~/dotfiles/configs/hypr ~/.config
fi

if test -d ~/.config/tmux; then
    echo "zellij exists... replacing!"
    rm -r ~/.config/tmux
    cp -r ~/dotfiles/configs/tmux ~/.config
else
    echo "zellij does not exist... creating"
    cp -r ~/dotfiles/configs/tmux ~/.config
fi

if test -d ~/.config/waybar; then
    echo "zellij exists... replacing!"
    rm -r ~/.config/waybar
    cp -r ~/dotfiles/configs/waybar ~/.config
else
    echo "zellij does not exist... creating"
    cp -r ~/dotfiles/configs/waybar ~/.config
fi

if test -e ~/.config/starship.toml; then
    echo "starship TOML exists... replacing!"
    rm ~/.config/starship.toml
    cp ~/dotfiles/configs/starship.toml ~/.config
else
    echo "starship TOML does not exist... creating"
    cp ~/dotfiles/configs/starship.toml ~/.config
fi
