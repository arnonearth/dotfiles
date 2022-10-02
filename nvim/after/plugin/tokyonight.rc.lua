local status, n = pcall(require, "tokyonight")
if (not status) then return end

n.setup({
  style = "storm",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = true },
    sidebars = "transparent",
  },
  on_colors = function(colors)
    colors.comment        = "#8a97d7" -- Making comment text brighter
    colors.bg_highlight   = "#41475f" -- Making cursor line brighter
  end
})

vim.cmd("colorscheme tokyonight")
