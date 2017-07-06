#!/bin/bash
# Sets reasonable OSX defaults
# Based on https://github.com/nicksp/dotfiles

# Change per system
COMPUTERNAME=""
HOSTNAME="mbp"
LOCALHOSTNAME="mbp"

sudo -v

sudo scutil --set ComputerName $COMPUTERNAME
sudo scutil --set HostName $HOSTNAME
sudo scutil --set LocalHostName $LOCALHOSTNAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $LOCALHOSTNAME

# Don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Check for software updates daily, not just once per week
defaults write com.assple.SoftwareUpdate ScheduleFrequency -int 1

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Hot corners, 5 stands for screen saver
defaults write com.apple.dock wvous-bl-corner -int 5

# Only show active apps in Dock
defaults write com.apple.dock static-only -bool TRUE

# Require password immediately after sleep or screen saver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to desktop and disable the horrific drop-shadow
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Only use UTF-8 in Terminal & iTerm
defaults write com.apple.terminal StringEncodings -array 4

# Enable sub-pixel rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Show the ~/Library folder
chflags nohidden ~/Library

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true