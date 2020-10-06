# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    cmake
    coreutils
    dockutil
    elixir
    git
    gh
    go
    htop
    jq
    kubernetes-cli
    minikube
    node
    packer
    pandoc
    python
    pyenv
    terraform
    tmux
    tree
    vim
    wget
    zsh
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

