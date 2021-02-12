alias remaster="git checkout master && git fetch -p && git pull --rebase" 
alias killz="kill -9 %1"
alias oldbranch='git branch -m $(git symbolic-ref --short HEAD)-old'
alias viz='nvim $(fzf)'
alias vim='nvim'
alias gbr="git branch | grep -v "master" | xargs git branch -D"

