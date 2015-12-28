#!/bin/bash

echo "-- Installing dotfiles"

echo "-- Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "---- Running on OSX"

    if [ ! -d $HOME/.oh-my-zsh ]; then
        echo "-- Installing Oh My Zsh"
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    #echo "-- Brewing all the things"
    #source install/brew.sh

    echo "-- Updating OSX settings"
    source install/osx.sh
fi

# echo "-- Configuring zsh as default shell"
# chsh -s $(which zsh)

echo "Done."
