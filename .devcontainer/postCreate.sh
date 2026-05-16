#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y sl

# Add /usr/games to PATH for bash
if ! grep -q "/usr/games" ~/.bashrc; then
    echo "export PATH=\$PATH:/usr/games" >> ~/.bashrc
fi

# Add /usr/games to PATH for zsh
if ! grep -q "/usr/games" ~/.zshrc; then
    echo "export PATH=\$PATH:/usr/games" >> ~/.zshrc
fi