return {
	{ import = "astrocommunity.utility.neodim" },

	{ import = "astrocommunity.utility.noice-nvim" },
	{
		"noice.nvim",
		opts = {
			presets = {
				lsp_doc_border = true,
			},
		},
		dependencies = {
			"rcarriga/nvim-notify",
		},
	},
}
