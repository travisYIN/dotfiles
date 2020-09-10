alias cls="clear"
alias cat="ccat"

alias ofd="open ."
alias zshrl="source ~/.zshrc"
alias zshrc="code ~/.zshrc"
alias tmrc="code ~/.tmux.conf"
alias hosts="code /etc/hosts"
alias quickp="sudo git add . & sudo git commit -m 'feat: quick commit' & sudo git push origin $(git_current_branch)"
alias s774="sudo chmod 774"

# git aliases
alias gs='git status'
gbdp() { git branch -D $@ && git push origin :$@ }

# bundle aliases
alias bdpod="bundle exec pod"

# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

# hippy
alias hippy='node ./scripts/local-cli/hippy.js run --project'
alias adbr='adb reverse tcp:8082 tcp:8082 & adb reverse tcp:38989 tcp:38989'

# wechattool
alias cli="/Applications/wechatwebdevtools.app/Contents/MacOS/cli"
