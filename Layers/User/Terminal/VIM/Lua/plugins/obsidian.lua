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

		notes_subdir = "Notes",

		wiki_link_func = function(opts)
			return require("obsidian.util").wiki_link_path_only(opts)
		end,

		preferred_link_style = "wiki",
	},
}

