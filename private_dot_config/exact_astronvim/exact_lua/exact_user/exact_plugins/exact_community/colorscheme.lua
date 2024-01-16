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
        alpha = true,
        dropbar = {
          enabled = true,
          color_mode = false,
        },
        neotest = true,
        neotree = true,
        lsp_trouble = true,
        noice = true,
        notify = true,
        overseer = true,
        term_colors = true,
        transparent_background = transparent_background,
        ts_rainbow2 = true,
        which_key = true,
      })
    end,
  },

  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  {
    "monokai-pro.nvim",
    opts = {
      filter = "machine",
    },
  },
}
