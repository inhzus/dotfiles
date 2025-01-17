-- Pull in the wezterm API
local wezterm = require 'wezterm'

return {
    color_scheme = 'Google (light) (terminal.sexy)',
    font = wezterm.font(
        'JetBrains Mono',
        { weight = 'DemiBold' }
    ),
    font_size = 14,
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",
}

