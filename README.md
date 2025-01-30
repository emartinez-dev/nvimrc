# Enrique's Neovim Configuration

## Overview

Welcome to my Neovim configuration! I have used
https://github.com/dam9000/kickstart-modular.nvim?tab=readme-ov-file
in order to kickstart my config, after a lot of time using NvChad

## Pre-requisites

- **Neovim 0.9 or higher:** Ensure that Neovim is installed on your system.
- **[Nerd Font](https://www.nerdfonts.com/) as terminal font:** My favourite is
[this one](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode).

## Installation

Execute this command to set up my Neovim configuration for Linux / MacOS:

```bash
git clone https://github.com/emartinez-dev/nvimrc.git ~/.config/nvimrc
```

After the clone and installation, it will open neovim and finish the
installation, including the installation of treesitter parsers and LSP clients,
necessary for features like autocompletion and syntax highlighting.

### How to uninstall

Just remove this folders to uninstall anything related to neovim:

```bash 
rm -rf ~/.config/nvim/ ~/.local/share/nvim/ ~/.local/state/nvim/
```

## Features

- **Customization:** I've configured the template to align with my coding style
and preferences.
- **Plugins:** A curated selection to enhance your coding experience.
- **Key Mappings:** Intuitive mappings for improved workflow.

### Key Remappings

| Key           | Replaces       | Function                                            |
| ------------- | -------------- | --------------------------------------------------- |
| `,`           | `<leader>`     | Leader key                                          |
| `,`           | `<leader>,`    | Jump back to the last cursor position               |
| ` `           | `:`            | Enter command mode                                  |
| `o`           | `o<esc>`       | Open a new line below the current one               |
| `O`           | `O<esc>`       | Open a new line above the current one               |
| `n`           | `nzz`          | Center the cursor vertically during a search        |
| `N`           | `Nzz`          | Center the cursor vertically during a search        |
| `Y`           | `y$`           | Yank from cursor to the end of the line             |
| `<c-j>`       | `<c-w>j`       | Navigate the split view: down                       |
| `<c-k>`       | `<c-w>k`       | Navigate the split view: up                         |
| `<c-h>`       | `<c-w>h`       | Navigate the split view: left                       |
| `<c-l>`       | `<c-w>l`       | Navigate the split view: right                      |
| `<leader>tc`  | `:tabnew<cr>`  | Open a new tab                                      |
| `<leader>tq`  | `:tabclose<cr>`| Close the current tab                               |
| `<leader>tn`  | `:tabnext<cr>` | Switch to the next tab                              |
| `<leader>tp`  | `:tabprevious<cr>` | Switch to the previous tab                      |

## Feedback

If you encounter any issues or have suggestions for improvements, feel free to
open an [issue](https://github.com/emartinez-dev/nvimrc/issues).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE)
file for details.

Feel free to explore and adapt it and happy coding! 🚀
