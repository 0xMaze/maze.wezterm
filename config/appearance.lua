return {
  max_fps = 120,
  front_end = 'WebGpu',
  webgpu_power_preference = 'HighPerformance',
  underline_thickness = '1.5pt',

  initial_rows = 60,
  initial_cols = 120,

  -- scrollbar
  enable_scroll_bar = true,

  window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
  color_scheme = 'Catppuccin Mocha',

  window_background_opacity = 0.60,
  macos_window_background_blur = 20,

  -- tab bar
  tab_bar_at_bottom = true,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = false,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  -- window
  window_padding = {
    left = 5,
    right = 5,
    top = 45,
    bottom = 0,
  },
  adjust_window_size_when_changing_font_size = false,
  window_close_confirmation = 'NeverPrompt',
  window_frame = {
    active_titlebar_bg = '#090909',
  },
  inactive_pane_hsb = {
    saturation = 1,
    brightness = 1,
  },

  visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 250,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 250,
    target = 'CursorColor',
  },
}
