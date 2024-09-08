
# Dotfiles

This repository contains my personal configuration files (dotfiles) for managing environments across different systems using [GNU Stow](https://www.gnu.org/software/stow/).

## Features

- Organized directories for easy reconstruction of symlinks across environments.
- Configurations include:
  - Shell environment setups (bash, zsh)
  - Text editor configurations (vim, neovim)
  - Custom scripts for automation (`justfile`)
  
## Quick Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/mkuhl/dotfiles.git
   ```
2. Use GNU Stow to symlink configurations:
   ```bash
   stow <folder_name>
   ```

3. To run predefined automation tasks, use `just`:
   ```bash
   just -choose
   ```

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)
- [Just](https://github.com/casey/just) for task automation

Feel free to explore and adapt these configurations for your own environment!
