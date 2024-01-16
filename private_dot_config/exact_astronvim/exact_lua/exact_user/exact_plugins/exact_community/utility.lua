return {
  -- { import = "astrocommunity.utility.neodim" },

  { import = "astrocommunity.utility.noice-nvim" },
  {
    "noice.nvim",
    opts = {
      lsp = {
        -- 	hover = {
        -- 		enabled = true,
        -- 		-- silent = true,
        -- 	},
        -- 	notify = {
        -- 		enabled = true,
        -- 		view = "notify",
        -- 	},
        -- 	popupmenu = {
        -- 		enabled = true,
        -- 	},
        -- 	progress = {
        -- 		enabled = true,
        -- 	},
        -- signature = {
        --   enabled = false,
        -- },
      },
      messages = {
        view_search = false,
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },

  { import = "astrocommunity.utility.nvim-toggler" },

  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },

  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
}
