bg = "light"
tn = "tokyonight-day"
if tonumber(os.date("%H")) < 6 or tonumber(os.date("%H")) > 18 then
  bg="dark"
  tn = "tokyonight-moon"
end

vim.o.background = bg
-- local colorscheme = "nord"
local colorscheme = tn
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end
