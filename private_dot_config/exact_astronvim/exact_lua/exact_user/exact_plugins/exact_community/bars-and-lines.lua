return {

  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  {
    "bufferline.nvim",
    config = function()
      require("bufferline").setup {
        -- diagnostics_indicator = function(_, _, _, context) -- (count, level, diagnostics_dict, context)
        --   if context.buffer:current() then return "" end
        --
        --   return ""
        -- end,
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
      }
    end,
    dependencies = { "catppuccin" },
  },

  -- {
  -- 	"bufferline.nvim",
  --
  -- 	opts = function()
  -- 		local opts = {
  -- 			diagnostics = "nvim_lsp",
  -- 			diagnostics_indicator = function(_, _, _, context) -- (count, level, diagnostics_dict, context)
  -- 				if context.buffer:current() then
  -- 					return ""
  -- 				end
  --
  -- 				return ""
  -- 			end,
  -- 			hover = {
  -- 				enabled = true,
  -- 				delay = 200,
  -- 				reveal = { "close" },
  -- 			},
  -- 			numbers = "ordinal",
  -- 			show_buffer_close_icons = false,
  -- 		}
  --
  -- 		local options = { options = opts }
  --
  -- 		if utils.is_available("catppuccin") then
  -- 			options = utils.extend_tbl(options, {
  -- 				highlights = require("catppuccin.groups.integrations.bufferline").get(),
  -- 			})
  -- 		end
  --
  -- 		return options
  -- 	end,
  -- },

  -- { import = "astrocommunity.bars-and-lines.feline-nvim" },
  -- {
  --   "feline.nvim",
  --   opts = function(_, opts)
  --     local ctp_feline = require "catppuccin.groups.integrations.feline"
  --     print(vim.inspect(ctp_feline))
  --     ctp_feline.setup()
  --   end,
  --
  --   dependencies = { "catppuccin" },
  -- },

  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  -- {
  -- 	"lualine.nvim",
  -- 	opts = {
  -- 		options = {
  -- 			component_separators = { left = "", right = "" },
  -- 			section_separators = { left = "", right = "" },
  -- 			theme = "catppuccin",
  -- 		},
  -- 	},
  -- },

  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },

  -- { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },

  { import = "astrocommunity.bars-and-lines.scope-nvim" },
}
