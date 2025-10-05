-- ~/.config/nvim/lua/plugins/local.lua

return {
	"cmdfix.nvim",
	dir = "/home/xin/.config/nvim/Local-Plugins/CmdFix",
	opts = {
		enabled = true,
		threshold = 1,
		ignore = { "Next" },
		aliases = { VeryLongCommand = "vlc" },
	},
	config = function(_, opts)
		require("cmdfix").setup(opts)
	end,
}
