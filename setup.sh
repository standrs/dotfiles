sudo apt-get install fzf ripgrep neovim -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir ~/.zshrc.d

ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/zshrc.d/alias.zsh ~/.zshrc.d/alias.zsh
