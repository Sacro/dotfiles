return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-dotnet",
        "neotest-go",
        "neotest-jest",
        "neotest-pest",
        "neotest-playwright",
        "neotest-phpunit",
        "neotest-python",
        "neotest-rust",
        "neotest-vitest",
        "neotest-zig",
      },
      consumers = {
        overseer = "neotest.consumers.overseer",
      },
    },
  },
  {
    "Issafalcon/neotest-dotnet",
  },
  {
    "nvim-neotest/neotest-go",
  },
  {
    "nvim-neotest/neotest-jest",
  },
  {
    "theutz/neotest-pest",
  },
  {
    "thenbe/neotest-playwright",
  },
  {
    "olimorris/neotest-phpunit",
  },
  {
    "nvim-neotest/neotest-python",
  },
  {
    "rouge8/neotest-rust",
  },
  {
    "marilari88/neotest-vitest",
  },
  {
    "lawrence-laz/neotest-zig",
  },
}
