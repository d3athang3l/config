-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
local catppuccin = require("lualine.themes.catppuccin")

-- new colors for theme
local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- change catppuccin theme colors
catppuccin.normal.a.bg = new_colors.blue
catppuccin.insert.a.bg = new_colors.green
catppuccin.visual.a.bg = new_colors.violet
catppuccin.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = catppuccin,
  },
})