#!/bin/bash

shopt -s expand_aliases
test -f "$HOME/.bashrc" && source "$HOME/.bashrc"

echo "This script will install NvChad, a popular neovim configuration, and my personal configuration"

if [[ ! $(test -d "$HOME/config/nvim") ]];
	then echo "There is already a nvim configuration at $HOME/.config/nvim, do you want to erase it? [y/n]: "
	read -n 1 ans
	echo
	if [[ $ans != "y" ]];
		then echo "Exiting installation..." && exit 1
	fi
fi

rm -rf "$HOME/.config/nvim/" && rm -rf "$HOME/.local/share/nvim/"

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && cp -R nvim ~/.config/ && nvim
