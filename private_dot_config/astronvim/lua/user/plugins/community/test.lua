return {
	{
		import = "astrocommunity.test.neotest",
		opts = function(_, opts)
			print(vim.inspect(opts))
			return require("astronvim.utils").extend_tbl({
				consumers = {
					overseer = require("neotest.consumers.oversedr"),
				},
			}, opts)
		end,
	},
}
