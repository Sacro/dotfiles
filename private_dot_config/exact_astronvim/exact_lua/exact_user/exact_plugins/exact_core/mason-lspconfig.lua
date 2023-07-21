local utils = require "astronvim.utils"

local install = {
  "pkgbuild_language_server",
}

return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, install) end,
  },
}
