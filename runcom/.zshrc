# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/ropel/.oh-my-zsh"
export EDITOR=vim

# Theme
ZSH_THEME="spaceship"
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false

# ZSH plugins
plugins=(
  docker-compose
  evalcache
  git
  kubectl
  kube-ps1
  tmux
  zsh-autosuggestions
  zsh-nvm
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zshrc_work

# Aliases
alias bn="git rev-parse --abbrev-ref HEAD"
alias cow="fortune | cowsay -f flaming-sheep -d | lolcat -F 0.15"

alias chi="lpass show --password 'datanerd.us (PAM)' -q | tr -d '\n' | pbcopy"
alias pdx="lpass show --password 'okta.com' -q | tr -d '\n' | pbcopy"

# Functions
function findregex(){
  find . -regex $1
}

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
