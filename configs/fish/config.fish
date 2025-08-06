starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    fm6000
end

set fish_greeting "@spencercraig92"

set -gx TERM xterm-256color
set -gx TERMINAL kitty

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "eza -l --icons"
alias la "eza -la -g --icons"
alias ll "ls -l"
alias lla "tree -a"
alias g git
alias fman "complete -C | fzf | xargs man"

# custom commands to build chronos and run
alias bchronos "/home/cogent/dev/chronos/build.sh"
alias chronos /home/cogent/dev/chronos/bin/testbed

command -qv nvim && alias vim nvim && alias v nvim

# NVM in fish via bass
bass source ~/.nvm/nvm.sh --no-use

fnm env | source

#API KEYS
set -gx FINNHUB_API_KEY cu40e31r01qp6s4jjba0cu40e31r01qp6s4jjbag
set -gx POLYGON_API_KEY haE51l8zypyVZuKf3xFRH4u_xRqXYzBM
set -gx GEMINI_API_KEY AIzaSyCjBVwTu-ShtDt9qz8Q1txsAaH5QLJ5D1o

# NVim
set -gx EDITOR nvim

#Postgres
set -x PGHOST localhost
set -x PGDATABASE cogentarch
set -x PGUSER cogentarchadmin
set -x PGPASSWORD Hellohi2692#
set -x PGPORT 5433

#PATH
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# C/C++

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# CUDA
set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
set -gx CPATH /opt/cuda/include $CPATH
set -gx LIBRARY_PATH /opt/cuda/lib64 $LIBRARY_PATH

# Vulkan
set -gx VULKAN_SDK $HOME/vulkan/1.4.309.0/x86_64
set -gx PATH $VULKAN_SDK/bin $PATH
set -gx LD_LIBRARY_PATH $VULKAN_SDK/lib $LD_LIBRARY_PATH
set -gx VK_LAYER_PATH $VULKAN_SDK/share/vulkan/explicit_layer.d
set -gx C_INCLUDE_PATH $VULKAN_SDK/include $C_INCLUDE_PATH
set -gx CPLUS_INCLUDE_PATH $VULKAN_SDK/include $CPLUS_INCLUDE_PATH

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end

zoxide init --cmd cd fish | source
