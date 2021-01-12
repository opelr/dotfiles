# Install cask packages

brew tap homebrew/cask-fonts

apps=(
    discord
    docker
    firefox
    font-fira-code
    iterm2
    keepingyouawake
    postman
    slack
    rectangle
    spotify
    tunnelblick
    visual-studio-code
    vlc
    zoom
)

brew install --cask "${apps[@]}"
