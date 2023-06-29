return function()
	vim.rpcnotify(1, "Gui", { Option = { "Popupmenu", 0 } })
	vim.rpcnotify(1, "Gui", { Option = { "Tabline", 0 } })
end
