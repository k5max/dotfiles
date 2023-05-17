-- https://github.com/numToStr/Comment.nvim
local status, comment = pcall(require, "Comment")
if not status then
    vim.notify("Comment not found")
    return
end

comment.setup()

-- 快捷键绑定
local opt = {
    noremap = true,
    silent = true,
}

-- 下面的快捷键设置不成功，原因待查
-- vim.keymap.set("n", "<>", "gcc", opt) -- 设置为Ctrl + /
-- vim.keymap.set("n", "<>", "gc", opt) -- 设置为Ctrl + Shift + /


