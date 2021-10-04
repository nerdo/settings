local wezterm = require 'wezterm';
return {
  disable_default_key_bindings = true,
  enable_tab_bar = false,
  window_background_opacity = 0.9,
  text_background_opacity = 0.95,
  font = wezterm.font("Dank Mono"),
  color_scheme = "Brogrammer",
  keys = {
    {key="v", mods="CTRL|SHIFT", action=wezterm.action{PasteFrom="Clipboard"}},
    {key="=", mods="CTRL", action="IncreaseFontSize"},
    {key="-", mods="CTRL", action="DecreaseFontSize"},
    {key="0", mods="CTRL", action="ResetFontSize"},
  }
}
