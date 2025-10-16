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

		keys = {
			-- Search/Quick Switch Keymaps (Telescope Integration)
			-- The 'finder' option set above makes these commands use Telescope
			{ "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Obsidian: Search Notes (Telescope)" },
			{ "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian: Quick Switch/Open (Telescope)" },
			{ "<leader>ot", "<cmd>ObsidianTags<cr>", desc = "Obsidian: Search Tags (Telescope)" },
			{ "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian: Backlinks (Telescope)" },

			-- Daily Note Keymaps
			{ "<leader>od", "<cmd>ObsidianToday<cr>", desc = "Obsidian: Daily Note (Today)" },
			{ "<leader>oy", "<cmd>ObsidianYesterday<cr>", desc = "Obsidian: Daily Note (Yesterday)" },

			-- New Note Keymaps
			{ "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Obsidian: New Note" },

			-- Core Actions
			{
				"<leader>of",
				function()
					return require("obsidian").util.gf_passthrough()
				end,
				desc = "Obsidian: Follow Link",
				mode = { "n", "v" },
				expr = true,
			},
			{
				"<leader>oc",
				function()
					return require("obsidian").util.toggle_checkbox()
				end,
				desc = "Obsidian: Toggle Checkbox",
				mode = { "n", "v" },
			},
		},
	},
}
