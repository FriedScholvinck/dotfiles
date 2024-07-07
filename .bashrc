# silence zsh warning on Mac
export BASH_SILENCE_DEPRECATION_WARNING=1

export XDG_CONFIG_HOME="$HOME/.config"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'

# ensure Homebrew's bin directory is in PATH
export PATH="/opt/homebrew/bin:$PATH"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias t='tmux'
alias vim='nvim'
alias v='nvim'

# Enable bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

eval "$(starship init bash)"
