return {
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{
		"catppuccin",
		-- https://github.com/catppuccin/nvim
		opts = {
			flavour = "mocha",
			integrations = {
				aerial = true,
				alpha = true,
				dashboard = true,
				dap = {
					enabled = true,
					enable_ui = true,
				},
				gitsigns = true,
				indent_blankline = {
					enabled = true,
					colored_indent_levels = true,
				},
				mason = true,
				native_lsp = {
					enabled = true,
				},
				neogit = true,
				neotree = true,
				neotest = true,
				nvimtree = false,
				cmp = true, -- nvim-cmp
				noice = true,
				notify = true,
				overseer = true,
				sandwich = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				ts_rainbow = false,
				ts_rainbow2 = true,
				lsp_trouble = true,
				which_key = true,
			},
			term_colors = true,
		},

		{ import = "astrocommunity.colorscheme.monokai-pro-nvim" },
		{
			"monokai-pro.nvim",
			opts = {
				filter = "machine",
			},
		},
	},
}
