export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# This file loads all .zsh files from ~/.zshrc.d
# and ~/.zshrc.d/local
if [ -d $HOME/.zshrc.d ]; then
  for file in $HOME/.zshrc.d/*.zsh; do
    source $file
  done

  if [ -d $HOME/.zshrc.d/local ]; then
    for file in $HOME/.zshrc.d/local/*.zsh; do
      source $file
    done
  fi
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
