-- Packer als Plugin manager
vim.cmd [[packadd packer.nvim ]]

-- Leader-Taste auf Leertaste setzen
vim.g.mapleader = ' '

-- Plugins laden
require('plugins')

-- Keybindings laden
require('keymaps')

-- Autocommands laden
require('autocmds')

