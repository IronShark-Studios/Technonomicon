return {
	"mg979/vim-visual-multi",
	enable = true,
	version = "*",
	lazy = false,

	keys = {
		{
			"<leader>j",
			"<Plug>(VM-Add-Cursor-At-Pos)",
			mode = { "n", "v" },
			desc = "Multi-Cursor: Add Cursor at Point",
		},
	},
}
