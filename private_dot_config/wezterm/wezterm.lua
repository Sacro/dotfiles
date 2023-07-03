-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMonoNL NFM")
config.font_size = 16

local default_prog = nil

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- Configs for Windows only
	-- font_dirs = {
	--     'C:\\Users\\whoami\\.dotfiles\\.fonts'
	-- }
	-- default_prog = { "wsl.exe", "~", "-d", "Ubuntu-20.04" }
	default_prog = { "pwsh.exe" }
end

config.default_prog = default_prog
-- and finally, return the configuration to wezterm
return config
