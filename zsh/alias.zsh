alias cls="clear"
alias javac="javac -J-Dfile.encoding=utf8"
alias zshrc="st ~/.zshrc"
alias mywd="cd ~/Documents/"
alias hosts="st /etc/hosts"
alias pysrv="open http://localhost:8000 && python -m SimpleHTTPServer"
alias quickp="git add . & git commit -m 'quick commit' & git push"

alias carbon='python /opt/graphite/bin/carbon-cache.py'
alias graphite-web='python /opt/graphite/bin/run-graphite-devel-server.py /opt/graphite'

alias jdc="ssh -A -t zhuyiteng@192.168.146.95 ssh -A -t zhuyiteng@172.22.213.59 ssh -A appadmin@172.16.157.61"

# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'