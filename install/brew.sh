# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    argo
    argocd
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
    node
    opa
    packer
    pandoc
    python
    pyenv
    rbenv
    redis
    tfenv
    tmux
    tree
    vim
    watch
    wget
    yq
    zsh
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

