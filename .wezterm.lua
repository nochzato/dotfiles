-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 20
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_background_opacity = 0.96
config.macos_window_background_blur = 0

config.keys = {}

for i = 1, 8 do
	-- CTRL+ALT + number to move to that position
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = wezterm.action.MoveTab(i - 1),
	})
end

config.colors = {}
config.colors.background = "#111111"

config.use_fancy_tab_bar = false

config.enable_scroll_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
