return {
	"mg979/vim-visual-multi",
	enable = true,
	version = "*",
	lazy = false,

	config = function()
		-- Set the custom 'Add Cursor At Pos' mapping
		vim.cmd([[let g:VM_leader = '<leader>j']])
	end,
}
