return {
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },

  {
    "lsp-inlayhints.nvim",
    opts = {
      gopls = {
        hints = {
          assignVariableTypes = true,
          compositeLiteralFields = true,
          constantValues = true,
          functionTypeParameters = true,
          parameterNames = true,
          rangeVariableTypes = true,
        },
      },
    },
  },
}
