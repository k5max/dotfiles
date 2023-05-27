-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("正在安装Pakcer.nvim，请稍后...")
    paccker_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
        install_path,
    })

    -- https://github.com/wbthomason/packer.nvim/issues/750
    local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim not found")
    return
end

packer.startup({
    function(use)
        -- packer => 插件管理 
        use("wbthomason/packer.nvim")

        ---------- Themes ----------
        -- 可以安装多个主题，外面指定即可
        use("navarasu/onedark.nvim")
        use("sainnhe/sonokai")

        ---------- Plugins ----------
        use("nvim-tree/nvim-web-devicons")

        -- lualine + nvim-web-devicons => 状态栏 + 图标
        use({ 
            "nvim-lualine/lualine.nvim",
            requires = { "nvim-tree/nvim-web-devicons", opt = true } 
        })

        -- vim-tree + nvim-web-devicons => 文件树 + 图标
        use({
            'nvim-tree/nvim-tree.lua',
            requires = { "nvim-tree/nvim-web-devicons" }
        })

        -- treesitter + nvim-ts-rainbow => 语法高亮 + 不同括号颜色区分
        use({
            "nvim-treesitter/nvim-treesitter",
            requires = { "p00f/nvim-ts-rainbow" },
            jrun = ":TSUpdate" 
        })
        -- bufferline => 类tab栏
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})

        -- gitsigns => 左侧git提示    
        use({ "lewis6991/gitsigns.nvim" })

        -- nvim-autopairs => 自动补全括号之类
        use("windwp/nvim-autopairs")

        -- comment => 注释
        use { "numToStr/Comment.nvim" }

        -- telescope => 文件搜索
        use({
            "nvim-telescope/telescope.nvim",
            tag = '0.1.1', -- 兼容0.8.x
            requires = { "nvim-lua/plenary.nvim" }
        })

        ---------- LSP单独拎出来 ----------
        -- installer
        use({ "williamboman/mason.nvim" })
        -- mason.nvim和neovim官方lspconfig的桥梁
        use({ "williamboman/mason-lspconfig.nvim" })
        -- lspconfig
        use({ "neovim/nvim-lspconfig" })

        -- Neovim 本身不支持代码补全，需要通过插件实现 --
        -- 补全引擎
        use("hrsh7th/nvim-cmp")

        -- 补全源
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }

        -- 还可以配置一些扩展的snippet 比如vsnip luasnip utilsnip snippy
        -- For vsnip users
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/vim-vsnip")

        -- For luasnip users
        use("L3MON4D3/LuaSnip")
        use("saadparwaiz1/cmp_luasnip")

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
