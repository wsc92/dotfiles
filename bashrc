# ~/.bashrc
#
# Add this lines at the top of .bashrc:
# [[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach

# your bashrc settings come here...
alias ls='eza -l -g --color --icons'
alias la='eza -la -g --color --icons'
alias grep='grep --color=auto'
alias v='nvim'
alias ..='cd ..'
alias tst='python ~/.config/qtile/bar.py'

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

eval "$(starship init bash)"

# bleopt prompt_ps1_final="$(starship module character)"
# bleopt prompt_rps1_final="$(starship module time)"

# Add this line at the end of .bashrc:
# [[ ${BLE_VERSION-} ]] && ble-attach
