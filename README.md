# My Dotfiles

This repository contains a few of my personal dotfiles and setup scripts for a productive development environment. I am working on a Mac, and I am using Homebrew to install most development tools. These files are symlinked to the proper directory (e.g. `~/.config/)` on my local machine.

Currently, my setup consists of configurations for Ghostty, Neovim (installed with LazyVim), Starship prompt, and more.

## Components

- **Bash profile**: Custom bash configuration
I am using bash as my default shell because it is more common than zsh. This repo contains a .bashrc file that is sourced in the .bash_profile and .profile files because in some cases, the .bashrc file is not sourced. These files live in my home directory `~`.

- **Ghostty**: Terminal emulator + multiplexer
I am using Ghostty for performance and simplicity. I am not using tmux. The config file lives in the `.config/ghostty/` folder.

- **Neovim**: Terminal text editor, installed with LazyVim (https://www.lazyvim.org/). The config files live in the `.config/nvim/` folder.

- **Starship**: Cross-shell prompt, easy to configure. The config file lives in the `.config/` folder.

- **Brewfile**: A list of tools to install via Homebrew (`brew bundle`)
- **Nushell**: A modern shell that treats data as structured tables, allowing powerful data manipulation in the terminal.
- **Yazi**: A blazing-fast terminal file manager written in Rust, with TUI preview support.

## Prerequisites
Make sure you have the following installed:

- macOS or a Debian-based Linux distribution (Ubuntu, Debian, etc.)
- xcode-select `xcode-select --install`
- Homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Installation


```
git clone https://github.com/FriedScholvinck/dotfiles.git cd dotfiles
just install
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