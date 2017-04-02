#!/bin/zsh

echo "Installing software..."
echo "Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brewing a bundle..."
brew tap Homebrew/bundle
brew bundle

echo "oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up zshrc
cp .zshrc ~/.zshrc
source ~/.zshrc

nvm install node

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

