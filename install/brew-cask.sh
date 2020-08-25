# Install cask packages

brew tap homebrew/cask-fonts

apps=(
    discord
    docker
    firefox
    font-fira-code
    iterm2
    keepingyouawake
    magnet
    postman
    slack
    spotify
    tunnelblick
    visual-studio-code
    vlc
    zoom
)

brew cask install "${apps[@]}"
