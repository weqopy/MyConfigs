require "app-manage"
require "ime-switch"
--require "wifi-control"
--require "window-size"

-- Reload Config
hs.hotkey.bind({"cmd", "ctrl"}, "h", function()
  hs.reload()
  hs.notify.new({title="Hammerspoon", informativeText="Roloaded!"}):send()
end)
