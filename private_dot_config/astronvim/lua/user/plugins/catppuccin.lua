return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				aerial = true,
				alpha = true,
				gitsigns = true,
				indent_blankline = {
					enabled = true,
					colored_indent_levels = true,
				},
				mason = true,
				neotree = true,
				cmp = true, -- nvim-cmp
				notify = true,
				telescope = true,
				treesitter = true,
				which_key = true,
			},
		})
	end,
	lazy = false,
}
