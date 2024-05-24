-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("i", "kj", "<ESC>", { desc = "Normal mode", remap = true })
map("i", "KJ", "<ESC>", { desc = "Normal mode", remap = true })
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left", remap = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right", remap = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up", remap = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down", remap = true })

vim.opt.timeout = true
vim.opt.timeoutlen = 100
