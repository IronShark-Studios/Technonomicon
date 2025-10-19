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
map("n", "<leader>j", ":Ns<CR>", { desc = "Opens New Terminal in Working Directory" })
map("n", "<leader>k", ":MCstart<CR>", { desc = "Starts Multi-Cursor Mode" })
map("n", "<leader>lk", "O- [ ] ", { desc = "Insert Indented Check Box Above" })
map("n", "<leader>lj", "o- [ ] ", { desc = "Insert Indented Check Box Below" })
map("n", "<leader>lo", "o  - [ ] ", { desc = "Insert Double Indented Check Box Below" })
map("n", "<leader>li", "o  - ", { desc = "Insert Double Indented Bullet Below" })
map("n", "<leader>lf", ":ObsidianFollowLink<CR>", { desc = "Opens Obsidian Link" })
map("n", "<leader>lb", ":ObsidianQuickSwitch<CR>", { desc = "Opens Obsidian File" })
map("n", "<leader>le", ":ObsidianOpen<CR>", { desc = "Opens Current File in Obsidian" })
map("n", "<leader>lL", ":ObsidianBacklinks<CR>", { desc = "Opens Obsidian Backlinks" })
map("n", "<leader>ln", ":ObsidianNewFromTemplate<CR>", { desc = "Opens New Obsidian File" })
map("n", "<leader>lc", "0t]r-", { desc = "Toggles Checkbox to Cancled Status" })
map("n", "<leader>lp", "0t]r/", { desc = "Toggles Checkbox to In-Progress Status" })
map("n", "<leader>lr", "0t]r ", { desc = "Resets Checkbox Status" })
map("n", "<leader>ld", "0t]rx", { desc = "Toggles Checkbox to Done Status" })

local map = vim.keymap.del
map("n", "<leader>l")
