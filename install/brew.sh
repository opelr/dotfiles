# Install Homebrew

if ! command -v brew &> /dev/null
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

export PATH="/opt/homebrew/bin:$PATH"

export PWD="$(dirname "$(realpath "$0")")"
brew bundle --file "$PWD/Brewfile"
