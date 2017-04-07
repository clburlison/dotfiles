#!/bin/bash

dotfiles=(.aliases .bash_profile .bashrc .editorconfig .exports .functions .gitconfig .gitignore .path .oh-my-zsh .vimrc .vim .zshrc)

for i in ${dotfiles[@]}; do
	echo $i
	cp -r ~/Dropbox/Mackup/${i} .
done

echo ""
echo "*************"
echo "Copy complete"
echo "*************"
echo ""
