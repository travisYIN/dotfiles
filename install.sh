#!/bin/bash

echo -e "\nInstalling dotfiles"

echo -e "\nInitializing submodule(s)"

git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n-- Running on OSX"

    if [ ! -d $HOME/.oh-my-zsh ]; then
        echo -e "\nInstalling Oh My Zsh"
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    #echo -e "\nBrewing all the things"
    #source install/brew.sh

    echo -e "\nUpdating OSX settings"
    source install/osx.sh
fi

# echo -e "\nConfiguring zsh as default shell"
# chsh -s $(which zsh)

echo -e "\nDone."
