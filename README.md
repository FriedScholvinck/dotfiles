# My Dotfiles

This repository contains my personal dotfiles and setup scripts for a productive development environment.

I am working on a Mac, and I am using Homebrew to install all the development tools.

Currently, my setup consists of configurations for Ghostty, Neovim (installed with LazyVim), Starship prompt, and more.

## Components

- **Bash profile**: Custom bash configuration
- **Ghostty**: Terminal emulator + multiplexer
- **Neovim**: Hyperextensible Vim-based text editor
- **LazyVim**: A Neovim configuration for the lazy
- **Starship**: Cross-shell prompt

- **Brewfile**: A list of tools to install via Homebrew (`brew bundle --file=Brewfile`)
- **Nushell**: A modern shell that treats data as structured tables, allowing powerful data manipulation
- **Yazi**: A blazing-fast terminal file manager written in Rust, with TUI preview support

## Prerequisites

- xcode-select
- Git
- Curl
- macOS or a Debian-based Linux distribution (Ubuntu, Debian, etc.)

## Installation

1. Clone this repository:
```
git clone https://github.com/FriedScholvinck/dotfiles.git cd dotfiles
```

2. Run the setup script to install all necessary tools:
```
chmod +x setup.sh ./setup.sh
```


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

how to symlink files and folders on local machine to setup dotfiles repo:
`ln -sf ~/.config/nvim/ nvim` to make a symlink to the files