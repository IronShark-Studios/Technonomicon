-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_create_user_command("Ns", function()
	local shell_cmd = "! alacritty"
	vim.cmd(shell_cmd)
end, {
	desc = "Open a new Alacritty terminal in the current directory",
})
