local status, saga = pcall(require, "lspsaga")

if (not status) then return end

saga.setup({})

local opts = { noremap = true, silent = true }

local open_terminal_command = "<C-\\><C-n><Cmd>Lspsaga term_toggle<CR>"

vim.keymap.set('t', '<ESC>', open_terminal_command, opts)
vim.keymap.set('n', '<ESC>', open_terminal_command, opts)

vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
