local obsidian_path = "/Documents/Obsidian"

return {
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  {
    "obsidian.nvim",
    opts = {
      dir = vim.env.HOME .. obsidian_path,
    },
    event = { "BufReadPre  *" .. obsidian_path .. "/*.md" },
  },
}
