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
map("n", "<leader>oa", "O- [ ] ", { desc = "Insert Indented Check Box Above" })
map("n", "<leader>ol", "o- [ ] ", { desc = "Insert Indented Check Box Below" })
map("n", "<leader>oL", "o  - [ ] ", { desc = "Insert Double Indented Check Box Below" })
map("n", "<leader>oi", "o- ", { desc = "Insert Indented Bullet Below" })
map("n", "<leader>oI", "o  - ", { desc = "Insert Double Indented Bullet Below" })
map("n", "<leader>k", ":MCstart<CR>", { desc = "Starts Multi-Cursor Mode" })
map("n", "<leader>of", ":ObsidianFollowLink<CR>", { desc = "Opens Obsidian Link" })
map("n", "<leader>oo", ":ObsidianQuickSwitch<CR>", { desc = "Opens Obsidian File" })
map("n", "<leader>oe", ":ObsidianOpen<CR>", { desc = "Opens Current File in Obsidian" })
map("n", "<leader>ob", ":ObsidianBacklinks<CR>", { desc = "Opens Obsidian Backlinks" })
map("n", "<leader>ob", ":ObsidianNewFromTemplate<CR>", { desc = "Opens New Obsidian File" })
map(
	"n",
	"<leader>od",
	":ObsidianToggleCheckbox<CR>:ObsidianToggleCheckbox<CR>:ObsidianToggleCheckbox<CR>:ObsidianToggleCheckbox<CR>",
	{ desc = "Toggles Checkbox to Done Status" }
)
