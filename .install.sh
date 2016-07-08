#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install rename
brew install ssh-copy-id
brew install tree
brew install node
brew install ffmpeg --with-libvpx
brew install python
brew install curl
brew install openssl
brew install rbenv
brew install ruby-build
brew install thefuck
brew install libxml2
brew install redis
brew install sphinx
brew install mysql
brew install shpotify
brew install nvm

# Cask
brew tap caskroom/versions
brew install brew-cask

brew cask install dropbox
brew cask install droplr
brew cask install 1password
brew cask install caffeine
brew cask install evernote

brew cask install transmit
brew cask install sequel-pro
brew cask install virtualbox

brew cask install iterm2
brew cask install atom
brew cask install sublime-text
brew cask install imageoptim

brew cask install google-chrome
brew cask install firefox

brew cask install bowtie
brew cask install vlc
brew cask install spotify
brew cask install skype

brew cask install steam

# Remove outdated versions from the cellar.
brew cleanup

# Gems
gem install bundle -v1.8.9
gem install mailcatcher
gem install foreman

# Node
npm install -g gulp
npm install -g grunt
