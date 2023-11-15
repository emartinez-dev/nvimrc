# Enrique's Neovim Configuration

## Overview

Welcome to my Neovim configuration! 

Based on the [NvChad](https://github.com/NvChad/NvChad) template, I've tailored it to suit my preferences while
keeping it open for anyone interested in trying Neovim. This repository is
mainly for myself, but feel free to try it!

## Pre-requisites

- **Neovim 0.9 or higher:** Ensure that Neovim is installed on your system.
- **[Nerd Font](https://www.nerdfonts.com/) as terminal font:** My favourite is
[this one](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode).

## Installation

Execute this command to set up my Neovim configuration for Linux / MacOS:

```bash 
git clone https://github.com/emartinez-dev/nvimrc.git && cd nvimrc && ./install.sh
```

After the clone and installation, it will open neovim and finish the
installation, including the installation of treesitter parsers and LSP clients,
necessary for features like autocompletion and syntax highlighting.

### How to uninstall

Just remove this folders to uninstall anything related to neovim:

```bash 
rm -rf ~/.config/nvim/ rm -rf ~/.local/share/nvim/
```

## Features

- **NvChad based:** Utilizing NvChad as a foundation for a powerful Neovim
setup.
- **Customization:** I've configured the template to align with my coding style
and preferences, but refer to the
- **Plugins:** A curated selection to enhance your coding experience.
- **Key Mappings:** Intuitive mappings for improved workflow.

### Visual customization

To change the theme, use the theme switcher `<leader> + th`. My favourite is `onedark`.

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

### Useful stuff

| Feature                       | Description                            |
| ----------------------------- | ---------------------------------------|
| **NvChadUpdate**              | Update NvChad to the latest version wiuh `:NvChadUpdate`|
| **Nvterm**                    | Terminal plugin for creating terminals inside nvim, create it vertical with `<leader> + v` and horizontal with `<leader> + h`. Escape the cursor out of the terminal with `<ctrl> + x`|
| **NvCheatsheet**              | Auto-generated mappings cheatsheet module with grid and simple themes. Toggle with `:NvCheatsheet` or `<leader> + ch`.|
| **Telescope.nvim**            | Highly extensible fuzzy finder over lists, learn the commands in the NvCheatsheet.|
| **Nvim-tree.lua**             | File explorer tree for Neovim written in Lua. Use `<ctrl>n` to open it.|
| **Nvim-ufo**                  | Automatically fold and unfold code blocks.|

## Feedback

If you encounter any issues or have suggestions for improvements, feel free to
open an [issue](https://github.com/emartinez-dev/nvimrc/issues).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE)
file for details.

Feel free to explore and adapt it and happy coding! 🚀
