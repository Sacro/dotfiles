return {
	"nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			-- additional_vim_regex_highlighting = false,
		})
	end,
}
