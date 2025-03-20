export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source "$ZSH/oh-my-zsh.sh"

export EDITOR='vim'

# ----------------------
# General Aliases
# ----------------------
alias c='clear'
alias l='ls -lh'
alias la='ls -Alh'
alias o='open .'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias vz='vim ~/.zshrc'
alias vs='vim ~/.config/starship.toml'
alias s='source ~/.zshrc'
alias h='history'

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add .'
alias gb='git branch --list'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gs='git status -s'
alias gd='git diff'
alias gr='git pull origin $(git symbolic-ref --short HEAD)'
alias gp='git push origin $(git symbolic-ref --short HEAD)'

# ----------------------
# Docker Aliases
# ----------------------
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias db='docker compose build'
alias da='docker ps -A'
alias dlogs='docker logs -f'
alias di='docker images'

# Initialize Starship
eval "$(starship init zsh)"