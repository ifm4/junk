-- LEADER --
vim.g.mapleader = " "

-- BASICS --
vim.keymap.set("n", "x", '"_x', { desc = "Doesn't save one deleted character" })
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Hides search highlights" })
vim.keymap.set("v", "<LEADER>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("n", "<LEADER>p", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("n", "<LEADER>n", "<cmd>Explore<CR>", { desc = "Open file tree" })
vim.keymap.set("n", "<LEADER>w", "<cmd>set invwrap<CR>", { desc = "Switches line wrapping" })
vim.keymap.set("n", "<LEADER>l", "<cmd>set invnu invrnu<CR>", { desc = "Switches line numbers" })

-- SPLIT NAVIGATION --
vim.keymap.set("n", "<UP>", "<C-w>k")
vim.keymap.set("n", "<DOWN>", "<C-w>j")
vim.keymap.set("n", "<LEFT>", "<C-w>h")
vim.keymap.set("n", "<RIGHT>", "<C-w>l")
--vim.keymap.set("i", "<UP>", "<ESC><C-w>k")
--vim.keymap.set("i", "<DOWN>", "<ESC><C-w>j")
--vim.keymap.set("i", "<LEFT>", "<ESC><C-w>h")
--vim.keymap.set("i", "<RIGHT>", "<ESC><C-w>l")
