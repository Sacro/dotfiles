local utils = require("astronvim.utils")

return {
	{
		"yamatsum/nvim-nonicons",
		requires = { "nvim-web-devicons" },
	},
	{
		"nvim-notify",
		optional = true,
		opts = function(_, opts)
			local nonicons_extention = require("nvim-nonicons.extentions.nvim-notify")
			return utils.extend_tbl(opts, {
				icons = nonicons_extention.icons,
			})
		end,
	},
	{
		"telescope.nvim",
		optional = true,
		opts = function(_, opts)
			local icons = require("nvim-nonicons")
			return utils.extend_tbl(opts, {
				defaults = {
					prompt_prefix = "  " .. icons.get("telescope") .. "  ",
					selection_caret = " ❯ ",
					entry_prefix = "   ",
				},
			})
		end,
	},
}
