local status, mdview = pcall(require, "markdown-preview")

if (not status) then return end

vim.g.mkdp_theme = "dark"
vim.g.mkdp_page_title = "Markdown Preview"

mdview.init()
