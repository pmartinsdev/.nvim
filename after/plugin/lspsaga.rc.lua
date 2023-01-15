local status, saga = pcall(require, "lspsaga")

if (not status) then return end

saga.setup({})

local opts = { noremap = true, silent = true }

vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('', 'tt', '<Cmd>Lspsaga term_toggle<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)