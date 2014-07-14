#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ./Brewfile

git clone git@github.com:drone/drone.git ~/
