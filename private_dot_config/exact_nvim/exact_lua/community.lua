-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  {
    "AstroNvim/astrocommunity",
    -- branch = "v6"
    -- dev = true
  },

  -- bars and lines
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },

  { import = "astrocommunity.colorscheme.catppuccin" },

  { import = "astrocommunity.pack.go" },
}
