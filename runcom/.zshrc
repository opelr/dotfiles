export ZSH="/Users/ropel/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/make/libexec/gnubin:/usr/local/texlive/2021basic/bin/universal-darwin/:$HOME/.cargo/bin:$PATH"
export EDITOR=nvim

plugins=(
  asdf
  aws
  git
  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
)

eval "$(jump shell)"

# Aliases
alias bn="git rev-parse --abbrev-ref HEAD"
alias watch="watch -c "
alias vim="nvim"
alias idea='open -na ~/Applications/JetBrains\ Toolbox/IntelliJ\ IDEA\ Community\ Edition.app'
alias dc="docker-compose"

# Theme
eval "$(starship init zsh)"

# Dependent Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zshrc_work

# Go
export PATH="$(go env GOPATH)/bin:$PATH"

# Functions
function findregex(){
  find . -regex $1
}

function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
