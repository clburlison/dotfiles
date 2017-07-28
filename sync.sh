#!/bin/bash

printer() {
	echo ""
	echo "*************"
	echo $1
	echo "*************"
	echo ""
}

printer "Start copy"

dotfiles=(.aliases
	.bash_profile
	.bashrc
	.config
	.editorconfig
	.exports
	.functions
	.gitconfig
	.gitignore
	.path
	.oh-my-zsh
	.vimrc
	.vim
	.zshrc
)

# This directory has git repos so we need to delete before copy
rm -rf .vim
rm -rf .config

for i in ${dotfiles[@]}; do
	echo $i
	cp -r ~/Dropbox/Mackup/${i} .
done

printer "Cleaning"

# Remove the following dirs as they don't need to be in git
remove=(
	.config/enchant
	.configstore
	.config/fish/fishd.*
	.config/configstore
	.vim/plugins
	.vim/backups
	.vim/swaps
	.vim/undo
)

for i in ${remove[@]}; do
	echo $i
	rm -rf ${i}
done

# Remove any swap files
find . -name '*.swp' -type f -delete

printer "Sync complete"