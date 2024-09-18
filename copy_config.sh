#!/bin/bash

NVIM_CONF_PATH="$HOME/.config/nvim/lua/"

cat << EOF
If you have done changes to nvim configuration, you can save it using this tool.
Do you want to copy the configuration at $NVIM_CONF_PATH? [y/n]
EOF

read -rn 1 ans
echo
if [[ $ans == "y" ]];
	then echo "Backing up NvChad configuration at $NVIM_CONF_PATH..."
		if [[ ! $(test -d "$NVIM_CONF_PATH") ]];
			then cp -R "$NVIM_CONF_PATH" nvim/
			echo "Configuration backed-up sucesfully!"
		fi
		else
			echo "I couldn't find any configuration."
fi

