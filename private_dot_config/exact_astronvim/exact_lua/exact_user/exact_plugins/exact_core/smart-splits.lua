local utils = require "astronvim.utils"

return {
  "smart-splits.nvim",
  opts = function(_, opts)
    return utils.extend_tbl(opts, {
      resize_mode = {
        hooks = {
          on_leave = require("bufresize").register,
        },
      },
    })
  end,

  build = "./kitty/install-kittens.bash",
  lazy = false,
}
