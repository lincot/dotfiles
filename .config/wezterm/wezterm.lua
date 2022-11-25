local wezterm = require "wezterm"

local keys = {
  {
    key = "t",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SpawnTab "CurrentPaneDomain",
  },
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
}

for i = 1, 9 do
  table.insert(keys, {
    key = tostring(i),
    mods = "ALT",
    action = wezterm.action.ActivateTab(i - 1),
  })
end

return {
  color_scheme = "Gruvbox dark, medium (base16)",
  font = wezterm.font "Fira Code",
  font_size = 14,
  keys = keys,
  animation_fps = 1,
  cursor_blink_rate = 0,
}
