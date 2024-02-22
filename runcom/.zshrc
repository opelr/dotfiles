#!/bin/zsh

# zmodload zsh/zprof
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/make/libexec/gnubin:/usr/local/texlive/2021basic/bin/universal-darwin/:$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
autoload -Uz compinit && compinit

# jump!
eval "$(jump shell)"

# Aliases
alias k="kubectl"
alias dc="docker-compose"
alias bn="git rev-parse --abbrev-ref HEAD"
alias watch="watch -c "
alias vim="nvim"
alias now="date -u +'%Y-%m-%dT%H:%M:%S'"

## Directories
setopt auto_cd
setopt auto_pushd

alias -g ...="cd ../.."
alias -g ....="cd ../../.."
alias -g .....="cd ../../../.."

alias ls="ls -G"
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Dependent Sources
source $HOME/.zshrc_work

# kubectl
source <(kubectl completion zsh)

# Go
export PATH="$(go env GOPATH)/bin:$PATH"
export GOROOT="$(go env GOROOT)"

# asdf
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# History, fzf
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Theming
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"

# zprof
