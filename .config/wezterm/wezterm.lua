-- Pull in the wezterm API
local wezterm = require 'wezterm'

return {
    animation_fps = 60,
    color_scheme = 'Google (light) (terminal.sexy)',
    font = wezterm.font(
        'Maple Mono',
        { weight = 'DemiBold' }
    ),
    font_size = 14,
    max_fps = 120,
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",
}

