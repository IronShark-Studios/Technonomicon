return {
	"mg979/vim-visual-multi",
	enable = true,
	version = "*",
	lazy = false,

	init = function()
		vim.g.VM_maps = {
			["Add Cursor At Pos"] = "ga",
		}
	end,
}
