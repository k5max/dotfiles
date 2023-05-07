local packer = require("packer")
packer.startup({
  function(use)
    -- packer => 插件管理 
    use("wbthomason/packer.nvim")
    -- theme => 可以安装多个主题，外面指定即可
    use("navarasu/onedark.nvim")
    use("sainnhe/sonokai")
    -- lualine + nvim-web-devicons => 状态栏 + 图标
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true }})
    -- treesitter => 语法高亮
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- nvim-ts-rainbow => 配合 treesitter，不同括号颜色区分
    use("p00f/nvim-ts-rainbow")
    -- vim-tree + nvim-web-devicons => 文件树 + 图标
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline => 类tab栏
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    -- gitsigns => 左侧git提示    
    use({ "lewis6991/gitsigns.nvim" })
    -- nvim-autopairs => 自动补全括号之类
    use("windwp/nvim-autopairs")
    end,
    config = {
      git = { clone_timeout = 60 }
  },
})
-- auto install plugins when save this file
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
