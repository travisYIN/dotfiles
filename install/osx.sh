#!/usr/bin/env sh

###############################################################################
# Finder                                                                      #
###############################################################################

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "Show the ~/Library folder in Finder"
chflags nohidden ~/Library

echo "Disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

echo "Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true


###############################################################################
# OS                                                             #
###############################################################################

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

echo "Disable Dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true

echo "Don’t show Dashboard as a Space"
defaults write com.apple.dock dashboard-in-overlay -bool true

echo "Disable auto correction"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo "For TextEdit"
defaults write com.apple.TextEdit SmartQuotes -bool false
defaults write com.apple.TextEdit SmartDashes -bool false

echo "For Notes"
defaults write com.apple.Notes SmartQuotes -bool false
defaults write com.apple.Notes SmartDashes -bool false

echo "Kill affected applications"

for app in Safari Finder TextEdit Notes Dock SystemUIServer; do
  killall "$app" >/dev/null 2>&1;
done
