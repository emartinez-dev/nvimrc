#!/bin/bash

shopt -s expand_aliases
test -f "$HOME/.bashrc" && source "$HOME/.bashrc"

cat << EOF
This script will install NvChad, a popular neovim configuration, and my personal
configuration. For more information, check the README.md file, and if you want
to edit anything, refer to the NvChad documentation:

https://nvchad.com/docs/config/walkthrough

Also, nvim >= 0.9 is recommended.
EOF

if [[ ! $(test -d "$HOME/config/nvim") ]];
	then echo "There is already a nvim configuration at $HOME/.config/nvim, do you want to erase it? [y/n]: "
	read -n 1 ans
	echo
	if [[ $ans != "y" ]];
		then echo "Exiting installation..." && exit 1
	fi
fi

rm -rf "$HOME/.config/nvim/" && rm -rf "$HOME/.local/share/nvim/"

cat << EOF
Starting installation. After the cloning is done, it will open neovim and 
install necessary packages like plugins and LSP for autocompletions. Be patient!

Press any key to continue...
EOF

read -n 1 ans

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && cp -R nvim ~/.config/ && nvim
