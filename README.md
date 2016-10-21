Dotfiles
---
This is my collection of zsh / tmux / osx / brew / git / ... configurations.

<img src="http://chuyik-github-io.qiniudn.com/others/dotfiles.jpeg?_2" >

## Setup
```bash
# Install required CLI tools
xcode-select --install

# Clone this repo and initialize everything
# Better checkout install.sh and customize it before start
git clone https://github.com/chuyik/dotfiles.git ~/dotfiles
./dotfiles/install.sh
```

## Themes

For your reference, these themes will be installed:

- iTerm2 Color scheme: [Oceanic Dark](https://github.com/mhartington/oceanic-next-iterm)
- oh-my-zsh theme: [Bullet Train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)

## Note

Introduction of some activated Oh-My-Zsh commands: 

- autojump: hit `J` + `dir` for a quick navigation
- dirhistory: hit `ALT` + `LEFT`/`RIGHT` navigate the history
- sublime: hit `st a.js` to open a file, `stt` to open current directory
- git: hit `gcl` to clone a repo, `ggpush` to push commits

> For more plugins, visit https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins.
