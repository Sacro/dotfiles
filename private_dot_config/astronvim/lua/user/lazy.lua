local utils = require("astronvim.utils")

return function(opts)
  return utils.extend_tbl(opts, {
    dev = {
      -- directory where you store your local plugin projects
      path = "~/Code/nvim",
      ---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
      patterns = {}, -- For example {"folke"}
      fallback = false, -- Fallback to git when local plugin doesn't exist
    },
  })
end
