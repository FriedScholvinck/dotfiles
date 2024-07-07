.PHONY: nvim tmux alacritty starship bash_profile profile install

nvim:
	rm -rf ~/.config/nvim
	ln -sf $(PWD)/nvim ~/.config/nvim

tmux:
	ln -sf $(PWD)/tmux.conf ~/tmux.conf

alacritty:
	rm -rf ~/.config/alacritty
	ln -sf $(PWD)/alacritty ~/.config/alacritty

starship:
	mkdir -p ~/.config
	ln -sf $(PWD)/starship.toml ~/.config/starship.toml

bash_profile:
	ln -sf $(PWD)/.bash_profile ~/.bash_profile

profile:
	ln -sf $(PWD)/.profile ~/.profile

# Removed fonts installation as per your request

install: nvim tmux alacritty starship bash_profile profile

