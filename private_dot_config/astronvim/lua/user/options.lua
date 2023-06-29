local utils = require("astronvim.utils")

return function(opts)
	opts = utils.extend_tbl(opts, {
		g = {
			diagnostics_mode = 1,
			python3_host_prog = "~/.pyenv/versions/neovim/bin/python",
			resession_enabled = true,
		},
		o = {
			guifont = "JetBrainsMono Nerd Font Mono:h16",
		},
	})

	if vim.fn.has("win32") then
		opts = utils.extend_tbl(opts, {
			g = {
				python3_host_prog = "python.exe",
			},
		})
	end

	return opts
end
