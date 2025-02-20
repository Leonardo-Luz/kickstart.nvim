
### [optional] Remove previous Neovim

```sh
sudo apt remove neovim

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

sudo add-apt-repository --remove ppa:neovim-ppa/stable

sudo apt-get update
```

# Download and install nvm:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22
```

### Install Neovim with Kickstarter

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```

### Clone Git Repository

```sh
git clone https://github.com/leonardo-luz/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

### Start Neovim

```sh
nvim
```
