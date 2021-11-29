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
    go
    helmfile
    hugo
    htop
    jq
    kind
    kubectx
    kubernetes-cli
    lastpass-cli
    minikube
    neovim
    opa
    packer
    pandoc
    python
    pyenv
    rbenv
    redis
    starship
    tfenv
    tmux
    tree
    watch
    wget
    yq
    zsh
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

