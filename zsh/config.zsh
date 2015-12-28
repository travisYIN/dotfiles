### Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

### Oh My Zsh
ZSH_THEME="agnoster"
plugins=(git osx autojump ruby sublime brew history atom dirhistory)

source $ZSH/oh-my-zsh.sh