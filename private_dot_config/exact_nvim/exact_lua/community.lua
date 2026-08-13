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

  -- Colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- Editing support
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- Pack
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.godot" },
  { import = "astrocommunity.pack.typescript" },
}
