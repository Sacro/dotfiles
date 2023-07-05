local abs_path = vim.fn.expand("%:p")
local chezmoi_path = vim.fn.expand("$HOME/.local/share/chezmoi/")

local is_chezmoi_config = string.sub(abs_path, 1, string.len(chezmoi_path)) == chezmoi_path

return {
	{
		"alker0/chezmoi.vim",
		lazy = not is_chezmoi_config,
	},
}
