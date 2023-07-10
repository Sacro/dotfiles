local utils = require("astronvim.utils")

return {
	"nvim-treesitter",
	opts = function(_, opts)
		if opts.ensure_installed ~= "all" then
			opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {
				"hcl",
				"kdl",
			})
		end
		opts.auto_install = true
		opts.highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		}
	end,
}
