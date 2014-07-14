#!/bin/bash -x

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ./Brewfile

boot2docker init
boot2docker up

ln -s ./.files/.bash_profile ~/
ln -s ./.files/.bashrc ~/
source ~/.bash_profile

git clone git@github.com:drone/drone.git ~/
