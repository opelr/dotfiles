# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    argo
    argocd
    autojump
    cmake
    coreutils
    dockutil
    git
    gh
    helm
    hugo
    htop
    jq
    kotlin
    kubectx
    kubernetes-cli
    lastpass-cli
    neovim
    opa
    pandoc
    redis
    starship
    tmux
    tree
    watch
    wget
    zsh
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

