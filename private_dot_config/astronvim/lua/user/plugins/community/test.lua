local utils = require("astronvim.utils")

return {
	{
		import = "astrocommunity.test.neotest",
	},
	{
		-- https://github.com/nvim-neotest/neotest
		"neotest",
		dependencies = { "overseer.nvim" },
		opts = function(_, opts)
			return utils.extend_tbl(opts, {
				adapters = {
					"neotest-dotnet",
					"neotest-go",
					"neotest-jest",
					"neotest-python",
					"neotest-rust",
					"neotest-vitest",
				},
				consumers = {
					overseer = require("neotest.consumers.overseer"),
				},
			})
		end,
	},
}
