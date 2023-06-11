local opts = {noremap = true, silent = true}

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)

vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)

-- Tab
vim.keymap.set('n', 'te', ':tabedit')
vim.keymap.set('n', 'tt', ':tabnew<CR>')
vim.keymap.set('n', 'tn', ':tabnext<CR>')
vim.keymap.set('n', 'tp', ':tabprevious<CR>')

-- Buffer
vim.keymap.set('n', ',', ':bprevious<CR><Space>')
vim.keymap.set('n', '.', ':bnext<CR><Space>')

-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
--keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('', '<C-h>', '<C-w>h')
vim.keymap.set('', '<C-k>', '<C-w>k')
vim.keymap.set('', '<C-j>', '<C-w>j')
vim.keymap.set('', '<C-l>', '<C-w>l')
