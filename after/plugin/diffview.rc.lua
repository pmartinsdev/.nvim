local status, _ = pcall(require, "diffview")

if (not status) then return end

local keymap = vim.keymap

keymap.set("n", "dv", ":DiffviewOpen<cr>", { silent = true })
keymap.set("n", "dc", ":DiffviewClose<cr>", { silent = true })
