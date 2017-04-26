#!/usr/bin/env bash

echo "--> Installing software..."

# Check which OS and install packages
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
   /bin/bash ./macOS.sh
elif [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
   /bin/bash ./ubuntu.sh
fi
echo "You're using $platform"

# Install oh my zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up vim
git clone https://github.com/raphamorim/lucario.git
mkdir -p ~/.vim/colors/ && cp lucario/colors/lucario.vim ~/.vim/colors/lucario.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up vimrc
cp ../.vimrc ~/.vimrc

# Set up zshrc
cp ../.zshrc ~/.zshrc
source ~/.zshrc

if [[ "$platform" == 'Linux' ]]; then
  source ~/.bashrc
fi

# Install nvm packages
nvm install node
npm install --global lambda-pure-prompt

# Install ruby
rbenv install -v 2.4.0
rbenv global 2.4.0
