#!/bin/bash

CONFIG_DIR=~/.iterm2

cp ./com.googlecode.iterm2.plist $CONFIG_DIR

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $CONFIG_DIR
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
