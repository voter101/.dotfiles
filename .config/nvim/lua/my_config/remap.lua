vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste into selected text (X mode) without overwritting the clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Similar: delete stuff without going into clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Copy into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set('n', 'Y', 'yy') -- Yank whole line like with "D" and "C"

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set('i', 'jj', '<ESC>')

-- Disable functionality
vim.keymap.set("n", "Q", "<nop>")

-- Relace selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Close all other splits
vim.keymap.set("n", "<leader>o", ":only")

-- Navigate splits
vim.keymap.set('', '<C-j>', '<C-W>j')
vim.keymap.set('', '<C-k>', '<C-W>k')
vim.keymap.set('', '<C-h>', '<C-W>h')
vim.keymap.set('', '<C-l>', '<C-W>l')

-- Tabs
vim.keymap.set('n', '<C-t>', ':tabnew<CR>')
vim.keymap.set('n', '<leader>t', ':tabnew<CR>')
vim.keymap.set('n', '<leader>w', ':tabclose<CR>')
