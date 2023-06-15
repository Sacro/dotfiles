return {
	{ import = "astrocommunity.code-runner.overseer-nvim" },
	{
		"overseer.nvim",
		config = function()
			require("overseer").setup({
				strategy = "toggleterm",
			})
		end,
	},
}
