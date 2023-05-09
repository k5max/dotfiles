-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- normal model
-- window分屏
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sc", "<C-w>c")

-- 取消搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- insert model


-- visual model
-- 上下移动选中文本
keymap.set("v", "J", ":move '>+1<CR>gv-gv")
keymap.set("v", "K", ":move '<-2<CR>gv-gv")

-- custom
-- nvimTree
keymap.set('n', '<A-m>', ':NvimTreeToggle<CR>')
