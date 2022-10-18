local wezterm = require 'wezterm';
return {
  --font = wezterm.font("JetBrains Mono"),
  --color_scheme = "Batman",
  inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
  },
  --window_background_image = "/home/esteban/config/backgrounds/Tux.jpg",

  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.3,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },
  --window_background_opacity = 0.7
}
