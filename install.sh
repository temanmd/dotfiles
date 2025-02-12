printf "\nIt will replace your:\n"
printf "~/.zshrc\n"
printf "~/.config/nvim\n"
printf "~/.emacs.d\n"
printf "~/.config/tmux/tmux.conf\n"
printf "~/.config/zed/keymap.json\n"
printf "~/.config/zed/settings.json\n"
printf "~/.oh-my-zsh/custom/themes/my-af-magic.zsh-theme\n"
printf "\n"
read -p "Are you sure? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

rm -rf ~/.config/nvim || exit 0
ln -snf $(PWD)/nvim ~/.config/nvim

rm -rf ~/.emacs.d || exit 0
ln -snf $(PWD)/emacs ~/.emacs.d

ln -snf $(PWD)/.zshrc ~/.zshrc
ln -snf $(PWD)/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -snf $(PWD)/oh-my-zsh/my-af-magic.zsh-theme ~/.oh-my-zsh/custom/themes/my-af-magic.zsh-theme
ln -snf $(PWD)/zed/keymap.json ~/.config/zed/keymap.json
ln -snf $(PWD)/zed/settings.json ~/.config/zed/settings.json
