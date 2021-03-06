#!/bin/bash

SH_BIN=/bin/sh
CP_BIN=/bin/cp
CD_BIN=/usr/bin/cd

CURRENT_DIR=$(/bin/pwd)

set -e

source ./utils.sh

echo_info "Installing homebrew and dependencies"
$SH_BIN ./homebrew/install.sh
# If some of the dependencies already exist installation will exit with an error code
set +e
/usr/local/bin/brew bundle
set -e
echo_success "homebrew dependencies installed"

$SH_BIN ./osx/setup.sh
$CP_BIN ./git/gitconfig $HOME/.gitconfig
$CP_BIN ./git/gitignore $HOME/.gitignore
$CP_BIN ./vim/vimrc $HOME/.vimrc
$CP_BIN ./editorconfig/editorconfig $HOME/.editorconfig
$SH_BIN ./fish/setup.sh

$CD_BIN iterm; $SH_BIN ./iterm/setup.sh; $CD_BIN $CURRENT_DIR
