local wezterm = require 'wezterm';

return {

  -- window_decorations = "RESIZE",
  -- disable_default_key_bindings = true,
  -- CTRL+SHIFT+ALT	"	SplitVertical={domain="CurrentPaneDomain"}
  keys = {
    {key="|", mods="CTRL|SHIFT|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="_", mods="CTRL|SHIFT|ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="raw:9", mods="CTRL",       action=wezterm.action{ActivateTabRelative=-1}},
    {key="raw:9", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=1}},
    {key="F11", mods="",             action="ToggleFullScreen"},
    {key="+", mods="CTRL",           action="IncreaseFontSize"},
    {key="n", mods="SUPER",          action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="n", mods="SHIFT|SUPER",    action="ShowLauncher"},
    {key="n", mods="CTRL|SHIFT|SUPER",action="SpawnWindow"},
    
    
    -- Turn off the default ToggleFullScreen bind that interfere with others
    {key="Enter", mods="ALT", action="Nop"},
  },
  -- color_scheme = "Batman",
  set_environment_variables = {
    -- This changes the default prompt for cmd.exe to report the
    -- current directory using OSC 7, show the current time and
    -- the current directory colored in the prompt.
    -- prompt = "$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m "
    },
  -- font = wezterm.font("Fira Mono for Powerline", {bold=true, italic=true}),
  -- font = wezterm.font("Fira Mono for Powerline"),
  -- NNwezterm.font("FiraCode Nerd Font"),
  font_size = 16.0,
  bold_brightens_ansi_colors = true,
  window_background_opacity = 0.8,
  audible_bell = "Disabled",
  visual_bell = {
    fade_in_duration_ms = 75,
    fade_out_duration_ms = 75,
    target = "CursorColor",
  },
  colors = {
    visual_bell = "#202020"
  },
}
