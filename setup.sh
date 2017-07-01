#!/bin/bash

BREW_BIN=/usr/local/bin/brew
SH_BIN=/bin/sh
CP_BIN=/bin/cp

set -e

source ./utils.sh

### Homebrew ###
echo_info "Installing homebrew and dependencies"
$SH_BIN ./homebrew/install.sh
# If some of the dependencies already exist installation will exit with an error code
set +e
$BREW_BIN bundle
set -e
echo_success "homebrew dependencies installed"

### OSX ###
$SH_BIN ./osx/setup.sh

### Git ###
$BIN_CP ./git/gitconfig $HOME/.gitconfig
$BIN_CP ./git/gitignore $HOME/.gitignore

### vim ###
$BIN_CP ./vim/vimrc $HOME/.vimrc
