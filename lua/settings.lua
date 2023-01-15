require("highlights")
require("maps")

vim.cmd("autocmd!")

vim.opt.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

vim.wo.number = true
vim.opt.title = true
vim.opt.showcmd = true
vim.opt.hlsearch = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.cmdheight = 1
vim.opt.shiftwidth = 2
vim.opt.laststatus = 2
vim.opt.scrolloff = 10

vim.opt.shell = 'fish'
vim.opt.completeopt = "menu"
vim.opt.inccommand = 'split'
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }

vim.opt.path:append { '**' }
vim.opt.clipboard:append { 'unnamedplus' }
vim.opt.wildignore:append { '*/node_modules/*' }
