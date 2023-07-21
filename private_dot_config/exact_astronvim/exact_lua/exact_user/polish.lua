return function()
  vim.filetype.add {
    filename = {
      PKGBUILD = "PKGBUILD",
    },
  }

  vim.rpcnotify(1, "Gui", { Option = { "Popupmenu", 0 } })
  vim.rpcnotify(1, "Gui", { Option = { "Tabline", 0 } })
end
