#!/bin/bash

## This script installs and configures the setup files like lazynvim required for autocomplete, suggest in neovim.


### Install lazynvim:
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

### Create the config file for nvim:
mkdir -p ~/.config/nvim

### Add the settings in the config file for nvim:
cat lazynvimsettings.lua >> ~/.config/nvim/init.lua
