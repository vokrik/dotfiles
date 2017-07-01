#!/bin/bash

GIT_BIN=/usr/bin/git
MKDIR_BIN=/bin/mkdir
SH_BIN=/bin/sh

TARGET_DIR=$HOME/dotfiles

$MKDIR_BIN -p $TARGET_DIR
$GIT_BIN clone git@github.com:martinkacmar/dotfiles.git $TARGET_DIR
cd $TARGET_DIR
$SH_BIN ./install.sh
