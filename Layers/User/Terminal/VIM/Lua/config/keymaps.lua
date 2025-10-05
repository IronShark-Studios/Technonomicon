-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "*", "*zzzv")
map("n", "#", "#zzzv")
map("n", "<leader>p", '"_dP', { desc = "Replace and Keep" })
map("n", "<leader>l", "o- [ ] ", { desc = "Insert Indented Check Box Below" })
map("n", "<leader>L", "O- [ ] ", { desc = "Insert Indented Check Box Above" })
map("n", "<leader>j", "\\\\\\", { desc = "Insert cursor under point" })
