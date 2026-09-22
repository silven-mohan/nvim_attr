#!/bin/bash

## This script installs neovim from the github releases:

### Download the .appimage file:
wget https://github.com/neovim/neovim/releases/latest/downloads/nvim-linux-x86_64.appimage

### Give execute permission for the user:
chmod u +x nvim-linux-x86_64.appimage

### Create a system wide bin file:
mkdir -p ~/.local/bin/nvim

### Move nvim appimage to bin:
mv nvim-linux-x86_64.appimage ~/.local/bin/nvim
