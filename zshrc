ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
DEFAULT_USER="jamie"
plugins=(osx ruby brew docker docker-compose github git-hubflow gulp node npm vscode per-directory-history iterm2)

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

# Vagrant aliases
alias vu='vagrant up'
alias vs='vagrant suspend'
alias vsh='vagrant ssh'
alias vh='vagrant halt'
alias v='vagrant'

# Base PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Sites/_go/bin:$HOME/.composer/vendor/bin

# PHP 8.1
export PATH="$(brew --prefix php@8.1)/bin:$PATH"

# NPM
export PATH="$HOME/.npm-packages/bin:$PATH"

# GOPATH
export GOPATH=$HOME/Sites/_go
export GOROOT=/usr/local/opt/go/libexec

# Python
export WORKON_HOME=$HOME/Sites/_venvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

# Private keys and tokens
source ~/.zshrc.private

# Pyenv
export PATH="$(pyenv root)/shims:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
