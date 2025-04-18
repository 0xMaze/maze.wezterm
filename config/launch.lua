local platform = require 'utils.platform'

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { 'pwsh', '-NoLogo' }
  options.launch_menu = {
    -- Windows shells (unchanged)
  }
elseif platform.is_mac then
  -- Set Zsh as default on macOS
  options.default_prog = { '/bin/zsh', '-l' } -- Default system Zsh
  -- OR if using Homebrew Zsh:
  -- options.default_prog = { '/opt/homebrew/bin/zsh', '-l' }

  options.launch_menu = {
    { label = 'Zsh', args = { '/bin/zsh', '-l' } }, -- First item = default in GUI menu
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
    { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
  }
elseif platform.is_linux then
  -- Set Zsh as default on Linux
  options.default_prog = { '/usr/bin/zsh', '-l' } -- Standard Linux path

  options.launch_menu = {
    { label = 'Zsh', args = { '/usr/bin/zsh', '-l' } },
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Fish', args = { 'fish', '-l' } },
  }
end

return options
