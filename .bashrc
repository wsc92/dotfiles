# Initialize Starship prompt
eval "$(starship init bash)"

# Interactive session check
if [[ $- == *i* ]]; then
    # Commands to run in interactive sessions
    fm6000
fi

# Greeting (Bash doesn't have an exact equivalent for fish_greeting)
echo "@spencercraig92"

# Set terminal type
export TERM=xterm-256color

# Theme settings (no direct equivalent in Bash)
export THEME_COLOR_SCHEME="terminal-dark"
export FISH_PROMPT_PWD_DIR_LENGTH=1
export THEME_DISPLAY_USER="yes"
export THEME_HIDE_HOSTNAME="no"
export THEME_HOSTNAME="always"

# Aliases
alias ls="eza -l --icons"
alias la="eza -la -g --icons"
alias ll="ls -l"
alias lla="tree -a"
alias g="git"
alias r="ranger"

# Custom commands to build and run Chronos
alias bchronos="/home/cogent/dev/chronos/build.sh"
alias chronos="/home/cogent/dev/chronos/bin/testbed"

# Set Neovim as the default editor
if command -v nvim &>/dev/null; then
    alias vim="nvim"
    alias v="nvim"
fi

# API Keys (exported for subprocesses)
export FINNHUB_API_KEY="cu40e31r01qp6s4jjba0cu40e31r01qp6s4jjbag"
export POLYGON_API_KEY="haE51l8zypyVZuKf3xFRH4u_xRqXYzBM"

# Set default editor
export EDITOR="nvim"

# PATH
export PATH="bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# C/C++ (if any extra paths are needed, add them here)

# NodeJS
export PATH="node_modules/.bin:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# CUDA - Set CUDA environment paths
export PATH="/opt/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/opt/cuda/lib64:$LD_LIBRARY_PATH"
export CPATH="/opt/cuda/include:$CPATH"
export LIBRARY_PATH="/opt/cuda/lib64:$LIBRARY_PATH"
