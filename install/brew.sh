#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
brew install ack
brew install tree
brew install wget

# development server setup
brew install nginx

# development tools
brew install git
brew install autojump
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
# brew install macvim --with-override-system-vim
