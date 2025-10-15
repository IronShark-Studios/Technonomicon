-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_user_command("Ns", function()
	local shell_cmd =
		'! export current_dir=$(pwd) && hyprctl dispatch exec "alacritty --working-directory $current_dir"'
	vim.cmd(shell_cmd)
end, {
	desc = "Open a new Alacritty terminal in the current directory",
})

vim.api.nvim_create_user_command("Nf", function()
	local shell_cmd =
		'! export current_dir=$(pwd) && hyprctl dispatch exec "alacritty --working-directory $current_dir -e ranger"'
	vim.cmd(shell_cmd)
end, {
	desc = "Open a new Ranger terminal in the current directory",
})

vim.api.nvim_create_user_command("Ne", function()
	local shell_cmd =
		'! export current_dir=$(pwd) && rofi -show file-browser-extended -file-browser-cmd "alacritty -e nvim" -file-browser-dir $current_dir'
	vim.cmd(shell_cmd)
end, {
	desc = "Open a new Ranger terminal in the current directory",
})
