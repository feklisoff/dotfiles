#!/bin/bash

# Ask for admin password
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew, install if not found
if test ! $(which brew); then
  echo "Installing homebrew... "
  /bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already installed formulae
brew upgrade --all

# Install things

brew install curl wget

brew install git

# ZSH + OhMyZsh
brew install zsh zsh-autosuggestions zsh-syntax-highlighting
sudo chmod -R 755 /usr/local/share/zsh
sudo chown -R root:staff /usr/local/share/zsh

/bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Terminal emulator
brew install --cask alacritty
brew install --cask wezterm

# Nerd fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# IDEs
brew install visual-studio-code
brew install neovim

# Window management
brew install zellij
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai

# Productivity
brew install --cask clipy
brew install --cask alfred
brew install eza
brew install bat

# Misc
brew install --cask vlc
brew install --cask qbittorrent
brew install --cask skype
brew install --cask obsidian
brew install --cask google-chrome
brew install --cask adobe-acrobat-reader

# Node.js
brew install node && node install npm

# Python
brew install python3

# Back up default .zshrc, recreate .zshrc that points to the ~/.config/.zshrc
cp ~/.zshrc ~/.zshrc.bak
rm ~/.zshrc
touch ~/.zshrc
echo "if [ -r ~/.config/.zshrc ]; then source ~/.config/.zshrc fi" > ~/.zshrc

