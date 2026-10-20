local wezterm = require("wezterm")
local config = {
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
		{ family = "Noto Sans Devanagari", scale = 1.0 },
		"Cascadia Code",
		{ family = "Lohit Devanagari", scale = 1.0 },
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
	-- Latin programming ligatures (these are on by default; explicit here):
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },

	-- Devanagari fonts aren't monospaced, so scale them to match cap-height:
	use_cap_height_to_scale_fallback_fonts = true,
	freetype_load_flags = "DEFAULT",
	freetype_render_target = "Normal",
}
return config
