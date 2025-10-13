-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "{", "{zzzv")
map("n", "}", "}zzzv")
map("n", "*", "*zzzv")
map("n", "#", "#zzzv")
map("n", "<leader>l", "o- [ ] ", { desc = "Insert Indented Check Box Below" })
map("n", "<leader>L", "o  - [ ] ", { desc = "Insert Double Indented Check Box Below" })
map("n", "<leader>k", ":MCstart<CR>", { desc = "Starts Multi-Cursor Mode" })
