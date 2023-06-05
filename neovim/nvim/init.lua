-- basic setting
require("basic")
-- keyboard mapping
require("keybindings")
-- packer plugin manage
require("plugins")
-- theme setting
require("colorscheme")

-- plugin setting
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.gitsigns")
require("plugin-config.nvim-autopairs")
require("plugin-config.comment")
require("plugin-config.telescope")
require("plugin-config.toggleterm")
require("plugin-config.alpha")
require("plugin-config.project")
require("plugin-config.which-key")

-- 内置LSP
require("lsp.lsp")
require("lsp.cmp")
require("lsp.ui")
