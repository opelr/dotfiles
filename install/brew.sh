# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

export PATH="/opt/homebrew/bin:$PATH"

brew bundle
