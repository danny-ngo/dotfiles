-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Create Config Object
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- GENERAL
config.automatically_reload_config = true
config.enable_tab_bar = false
config.max_fps = 240
config.animation_fps = 10

-- THEME & STYLING
config.color_scheme = 'Catppuccin Mocha'
config.window_background_opacity = 0.75
config.macos_window_background_blur = 30
config.default_cursor_style = "BlinkingBar"
config.cursor_thickness = 6.5
-- TODO: Set font
config.font_size = 15.0

-- WINDOW SETTINGS
config.window_decorations = "RESIZE" -- disable title bar without disabling the resizable border
config.window_padding = {
  left = 30,
  right = 30,
  top = 30,
  bottom = 0,
}

-- HYPERLINK RULES
config.hyperlink_rules = {
  -- Matches: a URL in parens: (URL)
  {
    regex = '\\((\\w+://\\S+)\\)',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in brackets: [URL]
  {
    regex = '\\[(\\w+://\\S+)\\]',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in curly braces: {URL}
  {
    regex = '\\{(\\w+://\\S+)\\}',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in angle brackets: <URL>
  {
    regex = '<(\\w+://\\S+)>',
    format = '$1',
    highlight = 1,
  },
  -- Then handle URLs not wrapped in brackets
  {
    regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
    format = '$0',
  },
  -- implicit mailto link
  {
    regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
    format = 'mailto:$0',
  },
}


return config