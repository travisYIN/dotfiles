#!/bin/bash

echo "---------------------------------------------------------"

## Install Submodules
echo -e "\nInitializing submodule(s)"
git submodule update --init --recursive

## Create Symlinks
source install/link.sh

## Install or Configure OSX
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n-- Running on OSX"

    if [ ! -d $HOME/.oh-my-zsh ]; then
        echo -e "\nInstalling Oh My Zsh"
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
    ### Oh My Zsh
    if [ ! -d $ZSH_CUSTOM/themes ]; then
        mkdir -p $ZSH_CUSTOM/themes/
        ln -s $DOTFILES/oh-my-zsh/themes/bullet-train.zsh-theme $ZSH_CUSTOM/themes/bullet-train.zsh-theme
    fi

    echo -e "\nBrewing all the things"
    source install/brew.sh

    echo -e "\nUpdating OSX settings"
    source install/osx.sh
fi

## Changing to zsh
echo -e "\nConfiguring zsh as default shell"
chsh -s $(which zsh)

echo -e "\nDone."
exit 0
