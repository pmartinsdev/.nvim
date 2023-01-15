local status, tk_theme = pcall(require, "tokyonight")

if (not status) then return end

tk_theme.setup({
  style = "night",
  transparent = true,
  terminal_colors = true,
  styles = {
    sidebars = "transparent",
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = true },
  }
})


vim.cmd[[colorscheme tokyonight]]

