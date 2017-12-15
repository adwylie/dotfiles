#!/bin/bash

# defaults write com.apple.NetworkBrowser DisableAirDrop -bool NO
# tmutil disablelocal

# xcode
# - xcode-select --install

# firefox
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
  leiningen
  macvim
  node
  postgresql
  python3
  rbenv
  ruby-build
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

# postgres.app
# pgadmin4
apps=(
  adobe-reader
  anki
  firefox
  gimp
  garmin-express
  google-hangouts
  java
  keepassx
  lastfm
  libreoffice
  musicbrainz-picard
  qbittorrent
  sketchup
  skype
  steam
  vlc
  xact
  xbox360-controller-driver
)

echo "Installing applications..."
brew cask install ${apps[@]}

brea cask install  battle-net
open /opt/homebrew-cask/Caskroom/battle-net/latest/Battle.net-Setup-enUS.app

brew cask cleanup
