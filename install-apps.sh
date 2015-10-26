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

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

bins=(
  cmake
  git
  postgresql
  python3
  rbenv
  ruby-build
  # tidy-html5
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
  firefox
  flux
  gimp
  google-chrome
  java
  keepassx
  kiwix
  lastfm
  libreoffice
  musicbrainz-picard
  skype
  smcfancontrol
  vlc
  webstorm
  xact
)

echo "Installing applications..."
brew cask install ${apps[@]}
brew cask cleanup
