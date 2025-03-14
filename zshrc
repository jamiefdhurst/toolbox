ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
DEFAULT_USER="jamie"
plugins=(macos brew docker docker-compose node vscode iterm2)

source $ZSH/oh-my-zsh.sh

# Docker aliases
alias docker='podman'
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias ds='docker stop'

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gcl='git clone'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gf='git fetch --all'
alias gl='git lg'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias gs='git status'
alias gt='git tag'

# Base PATH
export PATH=/opt/homebrew/bin:/opt/podman/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Sites/_go/bin

# Private keys and tokens
source ~/.zshrc.private

# Mise
eval "$(mise activate zsh)"

# Add Starship theme (this always needs to be last)
eval "$(starship init zsh)"
