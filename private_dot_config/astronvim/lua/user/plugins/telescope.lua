return {
	"telescope.nvim",
	config = function(plugin, opts)
		require("plugins.configs.telescope")(plugin, opts)

		require("telescope").load_extension("noice")
	end,
}
