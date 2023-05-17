local status, mason = pcall(require, "mason")
if not status then
    vim.notify("mason not found")
    return
end

local status, mason_config = pcall(require, "mason-lspconfig")
if not status then
    vim.notify("mason-lspconfig not found")
    return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
    vim.notify("lspconfig not found")
    return
end

-- :h mason-default-settings
-- ~/.local/share/nvim/mason
mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
mason_config.setup({
    ensure_installed = {
        --"ccls", mason暂不支持
        "clangd",
        "cmake",
        "lua_ls",
        "html",
        "cssls",
        "tsserver",
        "pyright",
        "jdtls",
    },
    -- 是否应该自动安装
    automatic_installation = true,
})

-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
    --ccls = require("lsp.config.ccls")
    clangd = require("lsp.config.clangd"),
    --cmake = require("lsp.config.cmake"),
    -- lua_ls = require("lsp.config.lua"), -- lua/lsp/config/lua.lua
    -- html = require("lsp.config.html"),
    -- cssls = require("lsp.config.css"),
    -- tsserver = require("lsp.config.typescript"),
    -- pyright = require("lsp.config.pyright"),
    -- jdtls = require("lsp.config.jdtls"),
    -- remark_ls = require("lsp.config.markdown"),
}


for name, config in pairs(servers) do
    if config ~= nil and type(config) == "table" then
        -- 自定义初始化配置文件必须实现on_setup 方法
        config.on_setup(lspconfig[name])
    else
        -- 使用默认参数
        lspconfig[name].setup({})
    end
end

-- lsp 结合 cmp 自动补全
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}
