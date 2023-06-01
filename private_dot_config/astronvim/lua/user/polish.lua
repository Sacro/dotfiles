return function()
	vim.g.python3_host_prog = "~/.pyenv/versions/neovim/bin/python"

	vim.g.diagnostics_mode = 1 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
end
