#!/bin/bash

echo "---------------------------------------------------------"

DOTFILES=$HOME/dotfiles

## Install or Configure OSX
if [ "$(uname)" == "Darwin" ]; then

    echo -e "\n-- Running on OSX"

    ## brew install
    echo -e "\nBrewing all the things"
    source $DOTFILES/install/brew.sh

    ## configure OSX
    echo -e "\nUpdating OSX settings"
    source $DOTFILES/install/osx.sh

    ## Changing to zsh
    echo -e "\nConfiguring zsh as default shell"
    chsh -s $(which zsh)

    ## Create ~/.bash_profile if not found
    if [ ! -e "$HOME/.bash_profile" ]; then
        touch $HOME/.bash_profile
    fi

    ## install and setup oh-my-zsh
    source $DOTFILES/install/oh-my-zsh.sh
    
    ## Install Tmux Plugin Manager
    source $DOTFILES/install/tpm.sh

    ## Create Symlinks
    source $DOTFILES/install/link.sh

    echo -e "\nDone."
    echo -e "You should reload oh-my-zsh with command: \n\tsource ~/.zshrc"

else

    echo -e "\nYou os is not OSX,please use other dotfiles"

fi

exit 0
