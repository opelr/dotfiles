zmodload zsh/zprof

eval "$(starship init zsh)"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export EDITOR=nvim

source $HOME/.antigenrc
source $HOME/.zshrc_work

# Aliases
alias k="kubectl"
alias bn="git rev-parse --abbrev-ref HEAD"
alias cow="fortune | cowsay -f flaming-sheep -d | lolcat -F 0.15"
alias watch="watch -c "
alias vim="nvim"

# Kubernetes autocomplete
autoload -Uz compinit && compinit
source <(kubectl completion zsh)
compdef __start_kubectl k

# Functions
function findregex(){
  find . -regex $1
}

function gi() { curl -sLwn https://www.gitignore.io/api/$@ ;}

