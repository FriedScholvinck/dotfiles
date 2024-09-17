# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$PATH:/path/to/cookiecutter

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

# managing python versions
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

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
alias chatbot='cd ~/repos/vz/chat_backend_api/'
alias genesis='cd ~/repos/vz/vz-chatbot-genesis/'
alias openweb='cd ~/repos/rag/open-webui/'
alias dotfiles='cd ~/dotfiles/'

if [ -f ~/.credentials ]; then
  source ~/.credentials
fi
