local utils = require "astronvim.utils"

local languages = { "kdl" }

return {
  {
    "nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, languages)
      end
    end,
  },
}
