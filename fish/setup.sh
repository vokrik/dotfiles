#!/bin/bash

GREP_BIN=/usr/bin/grep
CHSH_BIN=/usr/bin/chsh
FISH_BIN=/usr/local/bin/fish
CURL_BIN=/usr/bin/curl

sudo -v

# Adds fish to supported shells if it's not allowed yet
$GREP_BIN -q -F $FISH_BIN /etc/shells || sudo echo $FISH_BIN >> /etc/shells

# Changes shell to fish
$CHSH_BIN -s $FISH_BIN

# Downloads oh my fish
$CURL_BIN -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | $FISH_BIN

omf install mars
