return {
	"epwalsh/obsidian.nvim",
	enable = true,
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	opts = {
		workspaces = {
			{
				name = "Grimoire",
				path = "~/Grimoire",
			},
		},
	},

	daily_notes = {
		folder = "Journal",
		date_format = "%Y-%m-%d",
		template = "Journal Template.md",
	},
}
