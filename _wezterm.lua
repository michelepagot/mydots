local wezterm = require 'wezterm';

return {
-- debug_key_events = true,
  -- window_decorations = "RESIZE",
  -- disable_default_key_bindings = true,
  -- CTRL+SHIFT+ALT	"	SplitVertical={domain="CurrentPaneDomain"}
  keys = {
    {key="|", mods="CTRL|SUPER", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="_", mods="CTRL|SUPER", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
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
  color_scheme = "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
  set_environment_variables = {
    -- This changes the default prompt for cmd.exe to report the
    -- current directory using OSC 7, show the current time and
    -- the current directory colored in the prompt.
    -- prompt = "$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m "
    },
  -- font = wezterm.font("Fira Mono for Powerline", {bold=true, italic=true}),
  -- font = wezterm.font("Fira Mono for Powerline"),
  font = wezterm.font("FiraCode Nerd Font"),
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
  enable_wayland = false,
  ssh_domains = {
    {
    -- This name identifies the domain
    name = 'mpagot.prg',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = '10.100.103.141',
    -- The username to use on the remote host
    username = 'mpagot',
    },
  },
}
