#!/usr/bin/env bash

echo "--> Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "--> Brew bundle..."
brew tap Homebrew/bundle
brew bundle
