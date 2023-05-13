-- https://github.com/nvim-telescope/telescope.nvim
local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("telescope not found")
  return
end

local actions = require('telescope.actions')
telescope.setup{
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    mappings = {
        i = {
            ["<C-u>"] = actions.preview_scrolling_up,
            ["<C-d>"] = actions.preview_scrolling_down
        }
    }
  },
  pickers = {
    -- 内置 pickers 配置
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- 扩展插件配置
    -- extension_name = {
    --   extension_config_key = value,
    -- }
  }
}

-- 快捷键绑定
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
