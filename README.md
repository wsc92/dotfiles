# My Arch Linux Qtile Configuration 
# (USE X11 not WAYLAND)
### The installer is stable, but it requires MONONOKI NERD FONT so pick that option as the initial Nerd Font in the installer 
+ It is very minimal in design nothing to flashy but works for my needs 
+ It is still a WIP so *ONLY* install if you are know what you are doing in Arch and Qtile
+ Always browse the source in the scripts before installing blindly!! 😄

### Installation
+ Clean minimal install of Arch based on your pc specs
    + required packages in the arch install
        + multilib repo if using Nvidia GPU
        + Pipewire for audio
        + git
        + text editor of your choice (in case something goes horribly wrong)
        + pacman (should be installed with arch but I like to double check)
+ Clone the repo
    + ```bash git clone https://github.com/wsc92/dotfiles```
+ Run the install.sh script
    + ```bash ./install.sh```
+ Read the Prompts and make sure to pick Mononoki Nerd Font as the nerd-font to install
+ After installation sddm will be installed and when you first login make sure to pick Qtile not Qtile(Wayland)
+ Not every PC is the same so if a problem arises ill work on a fix
+ run arch-linux-tweaktool to get your window themes and icons and cursors
    + after arch-linux-tweak tool updates pacman it will switch the sddm config file
    + so if you want the sugar-dark theme then delete the added sddm config file in /etc/sddm.conf.d
### Packages
+ it does have quite a few packages so it can take a while to install with various user input prompts so read as you run the ./install.sh script
+ Package Managers
    + pacman
    + yay
    + snap
+ Shells
    + Fish
    + Bash
+ Terminals
    + alacritty (zellij as terminal multiplexer)
    + Kitty (simple bash)
    + starship for prompts
+ Editor
    + Neovim
    + Vim
    + Gedit (simple GUI)
+ Programs
    + Morgen (calendar)
    + Nemo (file manager)
    + draw.io (for design mapping)
    + Obsidian (Notetaker)
    + Ghidra (disassembler)
    + Zenmap (port scanner)
    + wireshark  (Network monitor)
    + discord
    + GIMP
    + Blender
    + Arch-linux-tweak tool for easier GTK theming
    + Nitrogen (GUI wallpaper)
    + feh (cli wallpaper)
    + cava
    + npm
    + gem
    + Node
    + and im sure im forgetting some

### Key Commands (working on the full list will have it built into system in the meantime look for keys.py in the .config/qtile folder)
+ super key by default is the windows key
+ super + q = quit
+ super + w = change wallpaper (add more to wallpapers in home)
+ super + e = File Manager (Nemo)
+ super + r = rofi drun
+ super + ENTER = launch Alacritty (fish shell)
+ super + k = Launch Kitty (bash shell)
+ super + i = Toggle Floating window
+ super + b = Launch Firefox
+ super + c = Launch Firefox (chatGPT)
+ super + n = Launch Obsidian
+ super + g = Screen Grab tool (Flameshot)
+ super + TAB = all apps that are open menu and workstation number
+ super + [1-6] = change workspace
+ super + shift + [1-6] = move application to that workspace

