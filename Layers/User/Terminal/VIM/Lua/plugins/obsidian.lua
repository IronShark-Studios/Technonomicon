return {
	"epwalsh/obsidian.nvim",
	enable = true,
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"telescope.nvim",
		"nvim-cmp",
	},

	opts = {

		dir = "~/Grimoire/",
		notes_subdir = "Notes",
		finder = "telescope.nvim",
		preferred_link_style = "markdown",

		workspaces = {
			{
				name = "Grimoire",
				path = "~/Grimoire",
			},
		},

		follow_url_func = function(url)
			-- open the URL in the default system browser
			vim.fn.system({ "xdg-open", url })
		end,

		templates = {
			folder = "Utility/Templates",
		},

		new_notes_location = "notes_subdir",
	},
}
