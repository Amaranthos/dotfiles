#! /bin/bash

# xcode-select —-install
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Pull dotfiles
# brew bundle install

/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# macOS defaults
## Finder

chflags nohidden ~/Library
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder AppleShowAllExtensions true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder QuitMenuItem -bool true

## Dock

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.2
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock expose-animation-duration -float 0.05

## Desktop Services

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write -g NSNavPanelExpandedStateForPrint -bool true
defaults write -g NSNavPanelExpandedStateForPrint2 -bool true
defaults write -g NSAutomaticCapitalizationEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false
defaults write -g NSToolbarTitleViewRolloverDelay -float 0

## Keyboard

defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g KeyRepeat -int 0.5
defaults write -g InitialKeyRepeat -float 10

defaults write -g AppleShowScrollBars -string "always"

defaults write -g com.apple.swipescrolldirection -bool false

killall Finder
killall Dock

exit 0