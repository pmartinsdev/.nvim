local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'tc', ':tabclose<Return>', { silent = true })
keymap.set('n', '<Space>', ':tabnext<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', 'sq', '<C-w>q')

-- Move window
keymap.set('n', 'sw', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Saving file
keymap.set('', ';w', '<Esc>:w<Return>')
keymap.set('', ';wa', '<Esc>:wa<Return>')


-- Git
keymap.set('', 'gc', '<Esc>:!git commit -m "')
keymap.set('', 'gaa', '<Esc>:!git add .<Return><Return>', { silent = true })
keymap.set('', 'gp', '<Esc>:!git push origin $(git rev-parse --abbrev-ref HEAD)<Return><Return>')
