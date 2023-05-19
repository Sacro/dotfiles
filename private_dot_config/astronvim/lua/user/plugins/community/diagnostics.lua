return {
	-- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
	-- {
	-- 	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	-- 	config = function()
	-- 		require("lsp_lines").setup()

	-- 		-- https://github.com/folke/lazy.nvim/issues/620
	-- 		vim.diagnostic.config({ virtual_lines = false }, require("lazy.core.config").ns)
	-- 		print(vim.inspect(vim.diagnostic.config()))
	-- 	end,
	-- },

	{ import = "astrocommunity.diagnostics.trouble-nvim" },
}
