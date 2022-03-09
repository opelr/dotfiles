# Install cask packages

brew tap homebrew/cask-fonts

apps=(
    alacritty
    basictex
    discord
    docker
    firefox
    font-fira-code
    font-iosevka
    insomnia
    keepingyouawake
    slack
    rectangle
    spotify
    visual-studio-code
    vlc
    zoom
)

brew install --cask "${apps[@]}"
