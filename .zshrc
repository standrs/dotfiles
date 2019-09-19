export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/stephenanders/.oh-my-zsh"
export GPG_TTY=`tty`
export N_PREFIX="$HOME/n"
export PATH="$N_PREFIX/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# zsh
HYPHEN_INSENSITIVE="true"
ZSH_THEME="avit"
plugins=(git)
source $ZSH/oh-my-zsh.sh

eval "$(ssh-agent -s)"
eval "$(rbenv init -)"

alias dcmp="docker-compose"
