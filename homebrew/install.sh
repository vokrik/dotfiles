#!/bin/bash

RUBY_BIN=/usr/bin/ruby
CURL_BIN=/usr/bin/curl

if test ! $(which brew)
then
    $RUBY_BIN -e "$($CURL_BIN -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
