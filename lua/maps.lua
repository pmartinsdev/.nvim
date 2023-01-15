local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'tc', ':tabclose<Return>', { silent = true })
keymap.set('n', '<Space>', ':tabnext<Return>', { silent = true })

-- Split window
keymap.set('n', 'sq', '<C-w>q', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', 'sw', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Saving file
keymap.set('', ';ww', '<Esc>:w<Return>', { silent = true })
keymap.set('', ';wa', '<Esc>:wa<Return>', { silent = true })
keymap.set('', ';wq', '<Esc>:wq<Return>', { silent = true })

-- Git
keymap.set('', 'gm', '<Esc>:!git merge ')
keymap.set('', 'gco', '<Esc>:!git checkout ')
keymap.set('', 'gcc', '<Esc>:!git commit -m "')
keymap.set('', 'gcb', '<Esc>:!git checkout -b ')
keymap.set('', 'gss', '<Esc>:!git stash<Return><Return>', { silent = true })
keymap.set('', 'gaa', '<Esc>:!git add .<Return><Return>', { silent = true })
keymap.set('', 'gsa', '<Esc>:!git stash apply<Return><Return>', { silent = true })
keymap.set('', 'gl', '<Esc>:!git pull origin $(git rev-parse --abbrev-ref HEAD)<Return>')
keymap.set('', 'gp', '<Esc>:!git push origin $(git rev-parse --abbrev-ref HEAD)<Return><Return>', { silent = true })
