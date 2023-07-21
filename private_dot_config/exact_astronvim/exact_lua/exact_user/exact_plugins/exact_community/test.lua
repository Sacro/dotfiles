local utils = require("astronvim.utils")

return {
	{
		import = "astrocommunity.test.neotest",
	},
	{
		-- https://github.com/nvim-neotest/neotest
		"neotest",
		ft = { "cs", "go", "javascript", "javascriptreact", "php", "python", "rust", "typescript", "typescriptreact" },
		opts = function(_, opts)
			return utils.extend_tbl(opts, {
				adapters = {
					require("neotest-dotnet"),
					require("neotest-go"),
					require("neotest-jest"),
					require("neotest-pest"),
					require("neotest-phpunit"),
					require("neotest-python"),
					require("neotest-rust"),
					require("neotest-vitest"),
				},
				consumers = {
					overseer = require("neotest.consumers.overseer"),
				},
			})
		end,
		dependencies = { "overseer.nvim" },
	},
	{
		"Issafalcon/neotest-dotnet",
	},
	{
		"nvim-neotest/neotest-go",
	},
	{
		"nvim-neotest/neotest-jest",
	},
	{
		"theutz/neotest-pest",
	},
	{
		"olimorris/neotest-phpunit",
	},
	{
		"nvim-neotest/neotest-python",
	},
	{
		"rouge8/neotest-rust",
	},
	{
		"marilari88/neotest-vitest",
	},
}
