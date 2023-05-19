return {
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{
		"catppuccin",
		opts = {
			flavour = "mocha",
			integrations = {
				aerial = true,
				alpha = true,
				dashboard = true,
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
			term_colors = true,
		},

		{ import = "astrocommunity.colorscheme.monokai-pro" },
		{
			"monokai-pro.nvim",
			opts = {
				filter = "machine",
			},
		},
	},
}
