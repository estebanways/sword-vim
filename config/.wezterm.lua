--
--------------------------------------------------------------------------------
--         FILE:  .wezterm.lua
--        USAGE:  --- 
--  DESCRIPTION:  Sets up a WezTerm terminal
--      OPTIONS:  ---
-- REQUIREMENTS:  WezTerm terminal
--         BUGS:  ---
--        NOTES:  ---
--       AUTHOR:  Esteban Herrera Castro, stv.herrera@gmail.com
--      COMPANY:  ---
--      VERSION:  1.0
--      CREATED:  31/10/23
--     REVISION:  ---
--------------------------------------------------------------------------------
--

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

    -- You can adjust the hue by scaling its value. A multiplier of 1.0 leaves
    -- the value unchanged.
    hue = 1.0,

    -- You can also adjust the saturation.
    saturation = 1.0,
  },
  --window_background_opacity = 0.7
}
