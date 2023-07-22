local utils = require "astronvim.utils"

return {
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    -- https://github.com/catppuccin/nvim
    opts = function(_, opts)
      local transparent_background = true

      if vim.g.neovide then transparent_background = false end

      return utils.extend_tbl(opts, {
        transparent_background = transparent_background,
        -- native_lsp = {
        --   enabled = true,
        -- },
      })
    end,
    term_colors = true,
  },

  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  {
    "monokai-pro.nvim",
    opts = {
      filter = "machine",
    },
  },
}
