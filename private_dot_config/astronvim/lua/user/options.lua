local utils = require("astronvim.utils")

return function(opts)
	local python3_host_prog = "~/.pyenv/versions/neovim/bin/python"

	if vim.fn.has("win32") then
		python3_host_prog = "python.exe"
	end

	return utils.extend_tbl(opts, {
		g = {
			diagnostics_mode = 1,
			python3_host_prog = python3_host_prog,
			resession_enabled = true,
		},
		o = {
			guifont = "JetBrainsMono Nerd Font Mono:h16",
		},
	})
end
