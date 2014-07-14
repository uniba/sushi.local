#!/bin/bash -x

DIRNAME=$(cd $(dirname $BASH_SOURCE); pwd)

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ./Brewfile

boot2docker init
boot2docker up

ln -s $DIRNAME/.files/.bash_profile ~/
ln -s $DIRNAME/.files/.bashrc ~/
source ~/.bash_profile

git clone git@github.com:drone/drone.git ~/
