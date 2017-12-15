#!/bin/bash

# defaults write com.apple.NetworkBrowser DisableAirDrop -bool NO
# tmutil disablelocal

# xcode
# - xcode-select --install

# firefox/google plugins
# - adblock plus
# - firebug
# - ghostery
# - https everywhere
# - perapera

# yamaha thr10 usb drivers.

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

bins=(
  git
  macvim
  postgresql
  python3
  sqlite
  wget
)

echo "Installing binaries..."
brew tap beeftornado/rmtree
brew tap caskroom/cask
brew install beeftornado/rmtree/brew-rmtree
brew install caskroom/cask/brew-cask

brew install macvim --with-override-system-vim
brew install ${bins[@]}

apps=(
  adobe-reader
  anki
  electrum
  firefox
  garmin-express
  google-chrome
  java
  jetbrains-toolbox
  keepassxc
  libreoffice
  musicbrainz-picard
  pgadmin4
  postgres
  qbittorrent
  sketchup
  skype
  steam
  vlc
  xact
  xbox360-controller-driver
  ynab
)

echo "Installing applications..."
brew cask install ${apps[@]}

brew cask install  battle-net
open /opt/homebrew-cask/Caskroom/battle-net/latest/Battle.net-Setup-enUS.app

brew cask cleanup
