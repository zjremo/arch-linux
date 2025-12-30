-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- ~/.config/nvim/lua/user/options.lua

-- define leader: <space> and local for \
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- LazyVim auto format
vim.g.autoformat = true

-- Snacks animations
-- allow snacks animations
vim.g.snacks_animate = true

-- auto to start fzf or telescope to seach file
vim.g.lazyvim_picker = "auto"

-- LazyVim completion engine to use (nvim-cmp or blink.cmp)
vim.g.lazyvim_cmp = "auto"

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- Show the current document symbols location from Trouble in lualine
vim.g.trouble_lualine = true

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- something about vim
local opt = vim.opt

opt.autoindent = true -- 自动缩进
opt.autoread = true -- 打开的文件被外部程序修改之后自动重新加载
opt.clipboard = "unnamedplus" -- 启用系统剪贴板（与 GNOME/KDE 等剪贴板集成）
opt.cursorline = true -- 当前行高亮
opt.colorcolumn = "100" -- 一行代码推荐的最长长度
opt.hlsearch = true -- 高亮搜索
opt.number = true -- 启用绝对行号
opt.relativenumber = true -- 启用相对行号
opt.smartindent = true -- 智能缩进
opt.smoothscroll = true --
opt.splitbelow = true
opt.splitright = true
opt.shiftwidth = 4 --Size of an indent
opt.tabstop = 4 --Number of spaces tabs count for

-- 语法高亮
vim.cmd("syntax on")

-- python lsp server
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
