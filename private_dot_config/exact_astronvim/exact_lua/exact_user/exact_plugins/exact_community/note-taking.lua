local obsidian_path = "/Documents/Obsidian"

return {
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  {
    "obsidian.nvim",
    opts = {
      dir = vim.env.HOME .. obsidian_path,

      notes_subdir = "Notes",

      daily_notes = {
        folder = "Notes/Daily",
      },

      templates = {
        subdir = "Templates",
      },
    },
    event = { "BufReadPre  *" .. obsidian_path .. "/*.md" },
  },
}
