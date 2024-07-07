# My Dotfiles

This repository contains my personal dotfiles and setup scripts for a productive development environment. It includes configurations for Alacritty, Neovim (with LazyVim), tmux, Starship prompt, and more.

## Components

- **Bash profile**: Custom bash configuration
- **Alacritty**: A fast, cross-platform, OpenGL terminal emulator
- **tmux**: Terminal multiplexer
- **Neovim**: Hyperextensible Vim-based text editor
- **LazyVim**: A Neovim configuration for the lazy
- **Starship**: Cross-shell prompt

## Prerequisites

- Git
- Curl
- macOS or a Debian-based Linux distribution (Ubuntu, Debian, etc.)

## Installation

1. Clone this repository:
```
git clone https://github.com/yourusername/dotfiles.git cd dotfiles
```

2. Run the setup script to install all necessary tools:
```
chmod +x setup.sh ./setup.sh
```

This script will install Neovim, tmux, Alacritty, Starship, and Make if they're not already present on your system.

3. Use the Makefile to install configurations:
```
make install
```

This will create symlinks for all configurations.

Alternatively, you can install specific configurations:
```
make nvim
make tmux
make alacritty
make starship
make bash_profile
make profile
```

## Manual Installation Steps

If you prefer to install components manually, follow these steps:

### macOS (using Homebrew)

First, install Homebrew if you haven't already:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install the components:

```bash
# Alacritty
brew install --cask alacritty

# Neovim
brew install neovim

# tmux
brew install tmux

# Starship
brew install starship

# Make (usually pre-installed on macOS, but just in case)
brew install make
```

### Linux (using apt)

Update package list:
```
sudo apt update
```

Install the components:

```bash
# Alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update
sudo apt install alacritty -y

# Neovim
sudo apt install neovim -y

# tmux
sudo apt install tmux -y

# Starship
curl -sS https://starship.rs/install.sh | sh

# Make
sudo apt install make -y
```

### LazyVim (for both macOS and Linux)

After installing Neovim:

```
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

After installing Starship, add the following to your ~/.bashrc or ~/.zshrc:

```
eval "$(starship init bash)"  # or zsh
```

## Customization

Feel free to explore and modify the configuration files to suit your preferences:

- Alacritty configuration: `alacritty/alacritty.yml`
- Neovim configuration: `nvim/`
- tmux configuration: `.tmux.conf`
- Starship configuration: `starship.toml`
- Bash profile: `.bash_profile`
- Profile: `.profile`

## Updating

To update your configurations, pull the latest changes from this repository and run `make install` again:

```
git pull
make install
```

## Troubleshooting

If you encounter any issues during installation or use, please check the following:

- Ensure all prerequisites are installed.
- Check that you have the necessary permissions to create symlinks and install packages.
- If a tool isn't working as expected, try running its install command manually to see any error messages.
- For further assistance, please open an issue in this repository.

