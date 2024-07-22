# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'
export PATH="/opt/homebrew/bin:$PATH"

# enable Vi mode
set -o vi

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias t='tmux'
alias vim='nvim'
alias v='nvim'

# launch python environments
alias a="source .venv/bin/activate"
alias d="deactivate"

# Enable bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# enable case insensitive completion
bind "set completion-ignore-case on"

eval "$(fzf --bash)"
eval "$(starship init bash)"

# quick access to repos
alias libr='cd ~/repos/rag/LibreChat/'
