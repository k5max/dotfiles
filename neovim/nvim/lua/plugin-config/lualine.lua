local status, lualine = pcall(require, "lualine")
if not status then
  vim.notify("lualine not found")
  return
end

lualine.setup({
  options = {
    -- 指定皮肤
    theme = "sonokai",
    -- 分割线
    component_separators = {
      left = "|",
      right = "|",
    },
  }
})
