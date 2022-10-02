local keymap = vim.keymap

-- keymap.set takes 3 arguments
-- the first one -> 'n' -> new keymap
-- the second one -> key input
-- the third one -> command to be mapped

-- Delete a character by directly press 'x'
keymap.set('n', 'x', '"_x"')

-- Inclement/decrement a number by pressing '+'/'-'
-- [for testing]: 1
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards by typing 'dw'
-- The original steps -> 'vb' -> '_d'
keymap.set('n', 'dw', 'vb"_d')

-- Select all with Ctrl+a
-- The original steps -> 'gg' -> Shift + v -> 'G'
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab by typing 'te' + enter
-- The original command -> :tabedit
keymap.set('n', 'te', ':tabedit')

-- Split window by typing 
-- 1. 'ss' for horizontal
-- 2. 'vs' for vertical
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
