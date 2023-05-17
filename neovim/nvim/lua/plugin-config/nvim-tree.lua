-- https://github.com/nvim-tree/nvim-tree.lua
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree not found")
    return
end

nvim_tree.setup({
    -- 排序规则
    sort_by = "case_sensitive",
    -- 不显示 git 状态图标
    git = {
        enable = false,
    },
    renderer = {
        group_empty = true,
    },
    -- 隐藏 .文件 
    filters = {
        dotfiles = true,
        -- 自定义隐藏文件夹
        custom = { '^.git$' }
    },
    view = {
        -- 宽度
        width = 40,
        -- 也可以 'right'
        side = 'left',
        -- 隐藏根目录
        hide_root_folder = false,
        -- 不显示行数
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭
            quit_on_open = false,
        },
    },
})

-- 快捷键绑定
-- alt + m 键打开关闭tree
local opt = {
    noremap = true,
    silent = true
}
vim.keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
