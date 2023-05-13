local packer = require("packer")
packer.startup({
    function(use)
        -- packer => 插件管理 
        use("wbthomason/packer.nvim")
        -- theme => 可以安装多个主题，外面指定即可
        use("navarasu/onedark.nvim")
        use("sainnhe/sonokai")
        use("nvim-tree/nvim-web-devicons")
        -- lualine + nvim-web-devicons => 状态栏 + 图标
        use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true }})
        -- vim-tree + nvim-web-devicons => 文件树 + 图标
        use {
            'nvim-tree/nvim-tree.lua',
            requires = { "nvim-tree/nvim-web-devicons" }
        }
        -- treesitter + nvim-ts-rainbow => 语法高亮 + 不同括号颜色区分
        use({ "nvim-treesitter/nvim-treesitter", requires = { "p00f/nvim-ts-rainbow" }, run = ":TSUpdate" })
        -- bufferline => 类tab栏
        -- gitsigns => 左侧git提示    
        use({ "lewis6991/gitsigns.nvim" })
        -- nvim-autopairs => 自动补全括号之类
        use("windwp/nvim-autopairs")
        -- 文件搜索
        use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" }})
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
