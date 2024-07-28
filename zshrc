ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
DEFAULT_USER="jamie"
plugins=(macos brew docker docker-compose node vscode iterm2 
zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Docker aliases
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias ds='docker stop'

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gf='git fetch -p'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias gs='git status'

# Base PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Sites/_go/bin

# GOPATH
export GOPATH=$HOME/Sites/_go
export GOROOT=/usr/local/opt/go/libexec

# Private keys and tokens
source ~/.zshrc.private
eval "$(starship init zsh)"
