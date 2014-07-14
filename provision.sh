#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ./Brewfile

ln -s ./.files/.bash_profile ~/
ln -s ./.files/.bashrc ~/
source ~/.bash_profile

git clone git@github.com:drone/drone.git ~/
