return {
	"epwalsh/obsidian.nvim",
	enable = true,
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"telescope.nvim",
	},

	opts = {

		dir = "~/Grimoire/",
		notes_subdir = "Notes",

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

		wiki_link_func = function(opts)
			return require("obsidian.util").wiki_link_path_only(opts)
		end,

		preferred_link_style = "wiki",

		finer = "telescope",

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
