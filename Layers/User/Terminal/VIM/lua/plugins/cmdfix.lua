-- ~/.config/nvim/lua/plugins/local.lua

return {
	-- The first value is the name you want to give the plugin.
	-- The plugin manager will look for the Lua module to require based on this name.
	{
		"my-local-plugin.nvim",
		-- Use the 'dir' key to specify the absolute path to your local plugin directory.
		dir = "/home/user/my-neovim-plugins/my-local-plugin.nvim",
		-- Optional: Add configuration options, keymaps, or lazy-loading settings
		opts = {
			some_setting = true,
		},
		config = function(_, opts)
			-- The module name to require is typically the directory name under lua/
			require("my_local_plugin").setup(opts)
		end,
	},
}
