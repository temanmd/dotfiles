PACKER_PATH=~/.local/share/nvim/site/pack/packer/start

nvim-link:
	rm -rf ~/.config/nvim || exit 0
	ln -snf $(PWD)/nvim ~/.config/nvim

kitty-link:
	rm -rf ~/.config/kitty || exit 0
	ln -snf $(PWD)/kitty ~/.config/kitty
