return {
	"mg979/vim-visual-multi",
	enable = true,
	version = "*",
	lazy = false,

	config = function()
		vim.cmd([[let g:VM_leader = '|']])
	end,
}
