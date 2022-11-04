PACKER_PATH=~/.local/share/nvim/site/pack/packer/start

nvim-link:
	rm -rf ~/.config/nvim || exit 0
	ln -snf $(PWD)/nvim ~/.config/nvim

