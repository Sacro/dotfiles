return {
	{ import = "astrocommunity.utility.neodim" },

	{ import = "astrocommunity.utility.noice-nvim" },
	{
		"noice.nvim",
		opts = {
			-- lsp = {
			-- 	hover = {
			-- 		enabled = true,
			-- 		-- silent = true,
			-- 	},
			-- 	notify = {
			-- 		enabled = true,
			-- 		view = "notify",
			-- 	},
			-- 	popupmenu = {
			-- 		enabled = true,
			-- 	},
			-- 	progress = {
			-- 		enabled = true,
			-- 	},
			-- 	signature = {
			-- 		enabled = true,
			-- 	},
			-- },
			messages = {
				view_search = false,
			},
			presets = {
				lsp_doc_border = true,
				long_message_to_split = true,
			},
		},
		dependencies = {
			"rcarriga/nvim-notify",
		},
	},
}
