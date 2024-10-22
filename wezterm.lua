local wezterm = require 'wezterm'
local c = wezterm.config_builder()

c.colors = {
  foreground = '#dddddd'
}

c.font = wezterm.font 'Jetbrains Mono'
c.font_size = 17

c.hide_tab_bar_if_only_one_tab = true

c.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

return c
