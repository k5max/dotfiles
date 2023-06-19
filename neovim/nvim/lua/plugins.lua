-- 插件管理
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    vim.notify("lazy.nvim not found")
    return
end

lazy.setup({
    ---------- Themes ----------
    -- 可以安装多个主题，外面指定即可
    { "sainnhe/sonokai", lazy = true },

    ---------- Plugins ----------
    -- lualine + nvim-web-devicons => 状态栏 + 图标
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", lazy = true } },

    -- vim-tree + nvim-web-devicons => 文件树 + 图标
    { 'nvim-tree/nvim-tree.lua', dependencies = { "nvim-tree/nvim-web-devicons" } },

    -- treesitter + nvim-ts-rainbow => 语法高亮 + 不同括号颜色区分
    { "nvim-treesitter/nvim-treesitter", dependencies = { "p00f/nvim-ts-rainbow" }, build = ":TSUpdate" },
    -- bufferline => 类tab栏
    { "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" } },

    -- gitsigns => 左侧git提示    
    "lewis6991/gitsigns.nvim",

    -- nvim-autopairs => 自动补全括号之类
    "windwp/nvim-autopairs",

    -- comment => 注释
    "numToStr/Comment.nvim",

    -- telescope => 文件搜索
    { "nvim-telescope/telescope.nvim", version = '0.1.1', dependencies = { "nvim-lua/plenary.nvim" } },
    -- toggleterm => toggle terminal
    "akinsho/toggleterm.nvim",

    -- alpha-nvim => welcome package
    "goolord/alpha-nvim",

    -- project => project manager
    "ahmedkhalf/project.nvim",

    -- which-key => 键盘绑定导航
    "folke/which-key.nvim",

    -- indent-blankline
    "lukas-reineke/indent-blankline.nvim",


    ---------- LSP单独拎出来 ----------
    -- installer
    "williamboman/mason.nvim",
    -- mason.nvim和neovim官方lspconfig的桥梁
    "williamboman/mason-lspconfig.nvim",
    -- lspconfig
    "neovim/nvim-lspconfig",

    -- Neovim 本身不支持代码补全，需要通过插件实现 --
    -- 补全引擎
    "hrsh7th/nvim-cmp",

    -- 补全源
    "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
    "hrsh7th/cmp-buffer", -- { name = 'buffer' },
    "hrsh7th/cmp-path", -- { name = 'path' }
    "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
    "hrsh7th/cmp-nvim-lsp-signature-help", -- { name = 'nvim_lsp_signature_help' }

    -- 还可以配置一些扩展的snippet 比如vsnip luasnip utilsnip snippy
    -- For vsnip users
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",

    -- For luasnip users
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
})
