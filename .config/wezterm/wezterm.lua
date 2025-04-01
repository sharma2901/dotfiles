local wezterm = require("wezterm")
local config = {
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
		"Noto Sans Devanagari", -- Will handle Devanagari
		"Cascadia Code",
	}),
	color_scheme = "Tokyo Night",
	font_size = 18,
	inactive_pane_hsb = {
		saturation = 0.3,
		brightness = 0.3,
	},
	window_background_opacity = 0.8,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
return config
