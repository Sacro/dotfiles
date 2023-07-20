return {
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    -- https://github.com/catppuccin/nvim
    opts = {
      transparent_background = true,
      native_lsp = {
        enabled = true,
      },
    },
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
