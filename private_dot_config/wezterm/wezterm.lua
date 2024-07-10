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

config.audible_bell = "Disabled"

config.window_frame = {
	active_titlebar_bg = "#14141F",
	inactive_titlebar_bg = "#232335",
	button_bg = "#14141F",
}

config.hide_tab_bar_if_only_one_tab = true

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

-- config.font = wezterm.font_with_fallback{ "Berkeley Mono" , "Symbols Nerd Font Mono" }
-- config.font_size = 16

-- config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")
-- config.font_size = 14

-- config.font = wezterm.font("FantasqueSansM Nerd Font Mono")
-- config.font_size = 16
-- config.line_height = 1.2

config.font = wezterm.font_with_fallback({
	{
		family = "MonoLisa Variable",
		harfbuzz_features = {
			"calt",
			"liga",
			"zero",
			"ss02",
			"ss07",
			"ss08",
			"ss11",
			"ss14",
			"ss15",
			"ss16",
			"ss17",
		},
		-- scale = 1.0,
	},
	{
		family = "Symbols Nerd Font Mono",
	},
})

config.font_size = 11
-- config.freetype_load_flags = "NO_AUTOHINT"
-- config.freetype_load_flags = "NO_HINTING"
config.freetype_load_flags = "NO_AUTOHINT|NO_HINTING"
config.line_height = 1.2

-- config.font = wezterm.font_with_fallback({"Rec Mono Duotone", "Symbols Nerd Font"})
-- config.font_size = 14
-- config.line_height = 1.1
-- config.use_cap_height_to_scale_fallback_fonts = true

config.default_prog = (wezterm.target_triple == "x86_64-pc-windows-msvc" and { "pwsh.exe" } or nil)

-- Here comes the Neovim configuration
--
-- if you are *NOT* lazy-loading smart-splits.nvim (recommended)
local function is_vim(pane)
	-- this is set by the plugin, and unset on ExitPre in Neovim
	return pane:get_user_vars().IS_NVIM == "true"
end

local direction_keys = {
	Left = "h",
	Down = "j",
	Up = "k",
	Right = "l",
	-- reverse lookup
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = wezterm.action_callback(function(win, pane)
			if is_vim(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = { key = key, mods = resize_or_move == "resize" and "META" or "CTRL" },
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
				else
					win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
				end
			end
		end),
	}
end

config.keys = {
	-- move between split panes
	split_nav("move", "h"),
	split_nav("move", "j"),
	split_nav("move", "k"),
	split_nav("move", "l"),
	-- resize panes
	split_nav("resize", "h"),
	split_nav("resize", "j"),
	split_nav("resize", "k"),
	split_nav("resize", "l"),
}

local configAvailable, localConfig = pcall(require, "local")
if configAvailable then
	localConfig.apply_to_config(config)
end

-- and finally, return the configuration to wezterm
return config
