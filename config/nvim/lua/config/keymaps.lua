-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shell 风格使用行尾行首快速跳跃
vim.api.nvim_set_keymap("i", "<C-a>", "<Esc>I", { noremap = true, silent = true }) -- insert, Ctrl+a 行首
vim.api.nvim_set_keymap("i", "<C-e>", "<Esc>A", { noremap = true, silent = true }) -- insert, Ctrl+e 行尾
vim.api.nvim_set_keymap("n", "<C-a>", "^", { noremap = true, silent = true }) -- normal, Ctrl+a 行首
vim.api.nvim_set_keymap("n", "<C-e>", "$", { noremap = true, silent = true }) -- normal, Ctrl+e 行尾
-- visual 模式
vim.api.nvim_set_keymap("v", "<C-a>", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-e>", "$", { noremap = true, silent = true })
