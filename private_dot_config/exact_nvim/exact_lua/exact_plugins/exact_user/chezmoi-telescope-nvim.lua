return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "GianniBYoung/chezmoi-telescope.nvim" },
    },
    config = function() require("telescope").load_extension "chezmoi" end,
  },
}
