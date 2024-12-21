ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
DEFAULT_USER="jamie"
plugins=(macos brew docker docker-compose node vscode iterm2 zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

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
export PATH=/opt/podman/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Sites/_go/bin

# GOPATH
#export GOPATH=$HOME/Sites/_go
#export GOROOT=/usr/local/opt/go/libexec

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# Private keys and tokens
source ~/.zshrc.private

# Add Starship theme (this always needs to be last)
eval "$(starship init zsh)"
