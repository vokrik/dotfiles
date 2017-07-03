#!/bin/bash

BREW_BIN=/usr/local/bin/brew
SH_BIN=/bin/sh
CP_BIN=/bin/cp

set -e

source ./utils.sh

echo_info "Installing homebrew and dependencies"
$SH_BIN ./homebrew/install.sh
# If some of the dependencies already exist installation will exit with an error code
set +e
$BREW_BIN bundle
set -e
echo_success "homebrew dependencies installed"

$SH_BIN ./osx/setup.sh
$BIN_CP ./git/gitconfig $HOME/.gitconfig
$BIN_CP ./git/gitignore $HOME/.gitignore
$BIN_CP ./vim/vimrc $HOME/.vimrc
$BIN_CP ./editorconfig/editorconfig $HOME/.editorconfig
$SH_BIN ./fish/setup.sh
$SH_BIN ./iterm/setup.sh
