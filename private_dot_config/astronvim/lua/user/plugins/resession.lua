local utils = require("astronvim.utils")

return {
	"resession.nvim",
	dependencies = { "overseer.nvim" },
	opts = function(_, opts)
		utils.extend_tbl(opts, {
			extensions = {
				aerial = {},
				astronvidsm = {},
				overseer = {},
			},
		})
	end,
}
