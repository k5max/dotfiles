-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.timeoutlen = 500

local keymap = vim.keymap
local opt = {
    noremap = true,
    silent = true
}

-- ===== normal model =====
-- 窗口分屏
keymap.set("n", "<leader>sv", "<C-w>v", opt) -- vsplit
keymap.set("n", "<leader>sh", "<C-w>s", opt) -- split
keymap.set("n", "<leader>sc", "<C-w>c", opt) -- close
-- hjkl四个方向切换窗口
keymap.set("n", "<C-h>", "<C-w>h", opt)
keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)
keymap.set("n", "<C-l>", "<C-w>l", opt)
--keymap.set("n", "<C-t>", "<C-w>t", opt) -- 跳到最顶部窗口
--keymap.set("n", "", "<C-w>b", opt)    -- 跳到最底部窗口
-- 设置窗口比例
keymap.set("n", "<leader>h", "<C-w>5<", opt) -- 减小宽度
keymap.set("n", "<leader>l", "<C-w>5>", opt) -- 增加宽度
keymap.set("n", "<leader>j", "<C-w>5-", opt) -- 减小高度
keymap.set("n", "<leader>k", "<C-w>5+", opt) -- 增加高度

-- 取消搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", opt)

-- ===== insert model =====


-- ===== visual model =====
-- 上下移动选中文本
keymap.set("v", "J", ":move '>+1<CR>gv-gv", opt)
keymap.set("v", "K", ":move '<-2<CR>gv-gv", opt)

-- ===== 插件相关快捷键在各自的配置里面 =====
-- nvimtree    => plugin-config/nvimtree.lua
-- telescope   => plugin-config/telescope.lua
-- lsp
-- cmp         => lsp/cmp.lua
