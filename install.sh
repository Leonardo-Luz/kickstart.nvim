#!/bin/bash

# Exit on error
set -e

# Function to prompt the user for y/n and return true for y, false otherwise
confirm() {
  read -r -p "$1 (y/n): " -n 1 response
  [[ "$response" =~ ^[Yy]$ ]]
}

# Function to handle optional removal of existing Neovim
remove_existing_neovim() {
  if confirm "Remove existing Neovim installation? "; then
    sudo apt remove neovim || true
    rm -rf "$HOME/.config/nvim" "$HOME/.local/share/nvim" "$HOME/.local/state/nvim" "$HOME/.cache/nvim" || true
    sudo add-apt-repository --remove ppa:neovim-ppa/stable || true
    sudo apt-get update
  fi
}

# Function to handle optional Node.js and npm installation
install_nodejs_npm() {
  if confirm "Install Node.js and npm? "; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
    . "$HOME/.nvm/nvm.sh"
    nvm install 22
  fi
}

# Main script
if confirm "Do you wish to install Neovim kickstart? "; then
  remove_existing_neovim

  # Install dependencies
  sudo apt update
  sudo apt install -y make gcc ripgrep unzip git xclip curl

  # Install Neovim
  sudo apt install -y neovim

  install_nodejs_npm

  config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"
  git clone https://github.com/leonardo-luz/kickstart.nvim.git "$config_dir/nvim" || {
    echo "Error cloning kickstart.nvim. Please check your internet connection and permissions."
    exit 1
  }

  echo "Neovim and kickstart.nvim installed successfully. Run 'nvim' to start."
else
  exit 0
fi
