# This Makefile contains targets for setting up and installing various configurations.

.PHONY: nvim tmux alacritty starship bash_profile profile install

# Creates a symbolic link for the .bashrc file in the user's home directory.
bashrc:
	ln -sf $(PWD)/.bashrc ~/.bashrc

# Creates a symbolic link for the .bash_profile file in the user's home directory.
bash_profile:
	ln -sf $(PWD)/.bash_profile ~/.bash_profile

# Creates a symbolic link for the .profile file in the user's home directory.
profile:
	ln -sf $(PWD)/.profile ~/.profile

# Creates a symbolic link for the alacritty configuration file in the user's ~/.config directory.
alacritty:
	rm -rf ~/.config/alacritty
	ln -sf $(PWD)/alacritty ~/.config/alacritty

# Removes existing tmux configuration files and creates a symbolic link for the tmux configuration file in the user's ~/tmux directory.
tmux:
	rm -rf ~/tmux.conf ~/.tmux.conf ~/tmux/tmux.conf
	mkdir -p ~/.config/tmux
	ln -sf $(PWD)/tmux/tmux.conf ~/.config/tmux/tmux.conf

# Creates a symbolic link for the nvim configuration files in the user's ~/.config/nvim directory.
nvim:
	rm -rf ~/.config/nvim
	ln -sf $(PWD)/nvim ~/.config/nvim

# Creates a symbolic link for the starship.toml configuration file in the user's ~/.config directory.
starship:
	rm -rf ~/.config/starship.toml
	ln -sf $(PWD)/starship.toml ~/.config/starship.toml

# Sets up the configurations for nvim, tmux, alacritty, starship, bashrc, bash_profile, and profile.
setup: nvim tmux alacritty starship bashrc bash_profile profile

# Installs necessary dependencies using Homebrew.
install:
	brew install --cask alacritty
	tmux tpm neovim starship