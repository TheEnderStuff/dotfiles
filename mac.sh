# A few lines that I use were taken from mirshko's dotfiles.
# These are commands I run on a new mac or version of macos to get set up. 

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Keep-alive: update existing `sudo` time stamp until `mac.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Stop iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set the icon size of Dock items to 56 pixels
defaults write com.apple.dock tilesize -int 56
