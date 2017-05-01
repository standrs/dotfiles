# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export GOPATH=$HOME/code/goworkspace
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Set theme
ZSH_THEME="spaceship"

# Hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ls='ls -AG'
alias sl='ls -AG'
alias cleands='cd && find . -name ".DS_Store" -type f -delete'
alias cleansync='cd && find . -name "*sync-conflict*" -type f -delete'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l logfile start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres -l logfile stop'
alias rezsh='source ~/.zshrc'

# Fix moving by word
bindkey "[C" forward-word
bindkey "[D" backward-word
