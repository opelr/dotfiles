export ZSH="/Users/ropel/.oh-my-zsh"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/make/libexec/gnubin:$PATH"
export EDITOR=nvim

plugins=(
  asdf
  autojump
  aws
  git
  kubectl
  terraform
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Aliases
alias bn="git rev-parse --abbrev-ref HEAD"
alias watch="watch -c "
alias vim="nvim"
alias idea='open -na "IntelliJ IDEA CE.app"'

# Theme
eval "$(starship init zsh)"

# Dependent Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zshrc_work

# Python
export PATH="$HOME/.poetry/bin:$PATH"

# Go
export PATH="$(go env GOPATH)/bin:$PATH"

# Functions
function findregex(){
  find . -regex $1
}

function gi() { curl -sLwn https://www.gitignore.io/api/$@ ;}

