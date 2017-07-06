#!/bin/bash

MKDIR_BIN=/bin/mkdir
CP_BIN=/bin/cp

CONFIG_DIR=$HOME/.iterm2

$MKDIR_BIN -p $CONFIG_DIR

$CP_BIN com.googlecode.iterm2.plist $CONFIG_DIR

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $CONFIG_DIR
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
