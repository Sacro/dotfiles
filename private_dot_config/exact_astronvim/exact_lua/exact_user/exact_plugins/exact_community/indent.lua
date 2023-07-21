return {
	{ import = "astrocommunity.indent.indent-blankline-nvim" },
	{
		"indent-blankline.nvim",
		opts = {
			show_current_context = true,
			show_current_context_start = false,
			-- space_char_blankline = " ",

			context_highlight_list = {
				"IndentBlanklineIndent1",
				"IndentBlanklineIndent2",
				"IndentBlanklineIndent3",
				"IndentBlanklineIndent4",
				"IndentBlanklineIndent5",
				"IndentBlanklineIndent6",
			},

			-- char_highlight_list = {
			-- 	"IndentBlanklineIndent1",
			-- 	"IndentBlanklineIndent2",
			-- 	"IndentBlanklineIndent3",
			-- 	"IndentBlanklineIndent4",
			-- 	"IndentBlanklineIndent5",
			-- 	"IndentBlanklineIndent6",
			-- },

			-- space_char_highlight_list = {
			-- 	"IndentBlanklineIndent1",
			-- 	"IndentBlanklineIndent2",
			-- 	"IndentBlanklineIndent3",
			-- 	"IndentBlanklineIndent4",
			-- 	"IndentBlanklineIndent5",
			-- 	"IndentBlanklineIndent6",
			-- },
		},
	},
}
