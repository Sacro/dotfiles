return {
	{ import = "astrocommunity.bars-and-lines.bufferline-nvim" },
	{
		"bufferline.nvim",
		after = "catppuccin",
		config = function()
			require("bufferline").setup({
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
			})
		end,
	},

	{ import = "astrocommunity.bars-and-lines.feline-nvim" },
	{
		"feline.nvim",
		config = function()
			require("feline").setup({
				components = require("catppuccin.groups.integrations.feline").get(),
			})
		end,
	},

	-- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
	-- {
	-- 	"lualine.nvim",
	-- 	config = function()
	-- 		require("lualine").setup({
	-- 			options = {
	-- 				component_separators = { left = "", right = "" },
	-- 				section_separators = { left = "", right = "" },
	-- 				theme = "catppuccin",
	-- 			},
	-- 		})
	-- 	end,
	-- },

	-- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
	-- { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
}
