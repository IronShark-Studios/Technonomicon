return {
	"mg979/vim-visual-multi",
	enable = true,
	version = "*",
	lazy = false,

	config = function()
		vim.cmd([[let n:VM_maps["Add Cursor At Pos"] = '<leader>j']])
	end,
}
