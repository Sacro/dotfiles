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

  { import = "astrocommunity.colorscheme.catppuccin" },
}
