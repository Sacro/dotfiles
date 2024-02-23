--- @type LazySpec
return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {},
    },
    dependencies = { "catppuccin" },
  },
}
