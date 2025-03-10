install:
	brew bundle --file=Brewfile
	ln -sf ~/.config/profile/ profile
	ln -sf ~/.config/bash_profile/ bash_profile
	ln -sf ~/.config/bash/ bash
	ln -sf ~/.config/ghostty/ ghostty
	ln -sf ~/.config/nvim/ nvim
	ln -sf ~/.config/starship/ starship
	ln -sf ~/.config/yazi/ yazi
	ln -sf ~/.config/nushell/ nushell

raycast:
	brew install --cask raycast
	ln -sf ~/.config/raycast/ raycast

