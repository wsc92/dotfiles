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

if test -d ~/.config/picom; then
	echo "picom exists... replacing!"
	rm -r ~/.config/picom
	cp -r ~/dotfiles/configs/picom ~/.config
else
	echo "picom does not exist... creating"
	cp -r ~/dotfiles/configs/picom ~/.config
fi

if test -d ~/.config/redshift; then
	echo "redshift exists... replacing!"
	rm -r ~/.config/redshift
	cp -r ~/dotfiles/configs/redshift ~/.config
else
	echo "redshift does not exist... creating"
	cp -r ~/dotfiles/configs/redshift ~/.config
fi

if test -d ~/.config/rofi; then
	echo "rofi exists... replacing!"
	rm -r ~/.config/rofi
	cp -r ~/dotfiles/configs/rofi ~/.config
else
	echo "rofi does not exist... creating"
	cp -r ~/dotfiles/configs/rofi ~/.config
fi

if test -d ~/.config/zellij; then
	echo "zellij exists... replacing!"
	rm -r ~/.config/zellij
	cp -r ~/dotfiles/configs/zellij ~/.config
else
	echo "zellij does not exist... creating"
	cp -r ~/dotfiles/configs/zellij ~/.config
fi

if test -e ~/.config/starship.toml; then
	echo "starship TOML exists... replacing!"
	rm ~/.config/starship.toml
	cp ~/dotfiles/configs/starship.toml ~/.config
else
	echo "starship TOML does not exist... creating"
	cp ~/dotfiles/configs/starship.toml ~/.config
fi

if test -d ~/.config/qtile; then
	echo "qtile exists... replacing!"
	rm -r ~/.config/qtile
	cp -r ~/dotfiles/configs/qtile ~/.config
else
	echo "qtile does not exist... creating"
	cp -r ~/dotfiles/configs/qtile ~/.config
fi
