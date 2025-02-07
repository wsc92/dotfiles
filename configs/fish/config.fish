starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    fm6000
end

set fish_greeting "@spencercraig92"

set -gx TERM xterm-256color

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
alias r ranger

# custom commands to build chronos and run
alias bchronos "/home/cogent/dev/chronos/build.sh"
alias chronos /home/cogent/dev/chronos/bin/testbed

command -qv nvim && alias vim nvim && alias v nvim

#API KEYS
set -gx FINNHUB_API_KEY cu40e31r01qp6s4jjba0cu40e31r01qp6s4jjbag

# NVim
set -gx EDITOR nvim

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

#CUDA
# Set CUDA environment paths
set -x PATH /opt/cuda/bin $PATH
set -x LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
set -x CPATH /opt/cuda/include $CPATH
set -x LIBRARY_PATH /opt/cuda/lib64 $LIBRARY_PATH


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
