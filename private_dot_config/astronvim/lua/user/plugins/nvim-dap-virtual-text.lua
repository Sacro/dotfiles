return {
	"theHamsta/nvim-dap-virtual-text",
	dependancies = {
		"nvim-dap",
		"nvim-treesitter",
	},
	config = function()
		require("nvim-dap-virtual-text").setup({})
	end,
	event = "User AstroFile",
}
