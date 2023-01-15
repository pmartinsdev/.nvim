local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local status, git_blame = pcall(require, "gitblame")

if (not status) then return end


vim.g.gitblame_enabled = 0
vim.g.gitblame_date_format = '%x'
vim.g.gitblame_message_when_not_committed = "Please commit this!!"
vim.g.gitblame_message_template = '[<date> - <author>] • <summary>'

keymap.set('', 'gb', '<Cmd>GitBlameToggle<CR>', opts)

git_blame.init()
