-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps for LazyVim
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Custom keymap: Bind `jk` to `Esc` in insert mode
map('i', 'jk', '<Esc>', opts)
