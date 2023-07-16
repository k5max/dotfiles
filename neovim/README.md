# neovim 配置

## 目录结构

```
nvim
├── init.lua
├── lazy-lock.json
└── lua
    ├── autocmd.lua
    ├── basic.lua
    ├── keybindings.lua
    ├── lsp
    │   ├── clangd.lua
    │   ├── lua.lua
    │   └── pyright.lua
    └── plugins
        ├── alpha.lua
        ├── bufferline.lua
        ├── cmp.lua
        ├── colorscheme.lua
        ├── comment.lua
        ├── gitsigns.lua
        ├── indent-blankline.lua
        ├── leap.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── nvim-autopairs.lua
        ├── nvim-tree.lua
        ├── nvim-treesitter.lua
        ├── project.lua
        ├── symbols-outline.lua
        ├── telescope.lua
        ├── toggleterm.lua
        └── which-key.lua
```

init.lua -- init文件

autocmd.lua -- neovim 自动命令

basic.lua -- neovim 基本配置

keybindings.lua -- neovim 基本快捷键配置

lsp -- lsp配置文件所在目录

plugins -- 插件文件配置所在目录



## 插件列表

### plugin manager

| plugin    | desc                                                 | url                                |
| --------- | ---------------------------------------------------- | ---------------------------------- |
| lazy.nvim | **lazy.nvim** is a modern plugin manager for Neovim. | https://github.com/folke/lazy.nvim |



### common

| plugin                | desc                                                         | url                                                    |
| --------------------- | ------------------------------------------------------------ | ------------------------------------------------------ |
| alpha-nvim            | `alpha` is a fast and fully programmable greeter for neovim. | https://github.com/goolord/alpha-nvim                  |
| bufferline.nvim       | A *snazzy* 💅 buffer line (with tabpage integration) for Neovim built using **lua**. | https://github.com/akinsho/bufferline.nvim             |
| Comment.nvim          | Smart and Powerful commenting plugin for neovim              | https://github.com/numToStr/Comment.nvim               |
| gitsigns.nvim         | Super fast git decorations implemented purely in Lua.        | https://github.com/lewis6991/gitsigns.nvim             |
| indent-blankline.nvim | This plugin adds indentation guides to all lines (including empty lines). | https://github.com/lukas-reineke/indent-blankline.nvim |
| leap.nvim             | Leap is a general-purpose motion plugin for Neovim           | https://github.com/ggandor/leap.nvim                   |
| lualine.nvim          | A blazing fast and easy to configure Neovim statusline written in Lua. | https://github.com/nvim-lualine/lualine.nvim           |
| nvim-autopairs        | A super powerful autopair plugin for Neovim that supports multiple characters. | https://github.com/windwp/nvim-autopairs               |
| nvim-tree.lua         | A File Explorer For Neovim Written In Lua                    | https://github.com/nvim-tree/nvim-tree.lua             |
| nvim-treesitter       | Treesitter configurations and abstraction layer for Neovim.  | https://github.com/nvim-treesitter/nvim-treesitter     |
| project.nvim          | project.nvim is an all in one neovim plugin written in lua that provides superior project management. | https://github.com/ahmedkhalf/project.nvim             |
| symbols-outline.nvim  | A tree like view for symbols in Neovim using the Language Server Protocol. Supports all your favourite languages. | https://github.com/simrat39/symbols-outline.nvim       |
| telescope.nvim        | `telescope.nvim` is a highly extendable fuzzy finder over lists. Built on the latest awesome features from `neovim` core. | https://github.com/nvim-telescope/telescope.nvim       |
| toggleterm.nvim       | A *neovim* plugin to persist and toggle multiple terminals during an editing session | https://github.com/akinsho/toggleterm.nvim             |
| which-key.nvim        | **WhichKey** is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing. | https://github.com/folke/which-key.nvim                |



### lsp + cmp

| plugin               | desc                                                         | url                                                  |
| -------------------- | ------------------------------------------------------------ | ---------------------------------------------------- |
| nvim-lspconfig       | Configs for the Nvim LSP client                              | https://github.com/neovim/nvim-lspconfig             |
| mason.nvim           | Portable package manager for Neovim that runs everywhere Neovim runs.Easily install and manage LSP servers, DAP servers, linters, and formatters. | https://github.com/williamboman/mason.nvim           |
| mason-lspconfig.nvim | mason-lspconfig bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together. | https://github.com/williamboman/mason-lspconfig.nvim |
| nvim-cmp             | A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced". | https://github.com/hrsh7th/nvim-cmp                  |



## 快捷键

### 改键后快捷键

| command          | keybinding  | origin        | model  |
| ---------------- | ----------- | ------------- | ------ |
| 垂直分屏         | \<leader>sv | \<C-w>v       | normal |
| 水平分屏         | \<leader>sh | \<C-w>s       | normal |
| 关闭当前窗口     | \<leader>sc | \<C-w>c       | normal |
| 关标跳到左边窗口 | \<C-h>      | \<C-w>h       | normal |
| 关标跳到下边窗口 | \<C-j>      | \<C-w>j       | normal |
| 关标跳到上边窗口 | \<C-k>      | \<C-w>k       | normal |
| 关标跳到右边窗口 | \<C-l>      | \<C-w>l       | normal |
| 跳到最顶部窗口   | \<C-t>      | \<C-w>t       | normal |
| 减小5行宽度      | \<leader>h  | \<C-w>5<      | normal |
| 增加5行宽度      | \<leader>l  | \<C-w>5>      | normal |
| 减小5行高度      | \<leader>j  | \<C-w>5-      | normal |
| 增加5行高度      | \<leader>k  | \<C-w>5+      | normal |
| 取消搜索高亮     | \<leader>nh | :nohl\<CR>    | normal |
| 禁用上方向键     | \<Nop>      | \<Up>         | normal |
| 禁用下方向键     | \<Nop>      | \<Down>       | normal |
| 禁用左方向键     | \<Nop>      | \<Left>       | normal |
| 禁用右方向键     | \<Nop>      | \<Right>      | normal |
| 下移选中的文本   | J           | >+1\<CR>gv-gv | visual |
| 上移选中的文本   | K           | <-2\<CR>gv-gv | visual |



### 插件快捷键

| command                              | keybinding        | plugin               | model         |
| ------------------------------------ | ----------------- | -------------------- | ------------- |
| 打开欢迎页                           | \<leader>a        | alpha-nvim           | normal        |
| 打开/关闭侧边文件栏                  | \<leader>e        | nvim-tree            | normal        |
| 打开/关闭大纲                        | \<leader>o        | symbols-outline.nvim | normal        |
| find files                           | \<leader>ff       | telescope.nvim       | normal        |
| live grep                            | \<leader>fg       | telescope.nvim       | normal        |
| buffer                               | \<leader>fb       | telescope.nvim       | normal        |
| help tags                            | \<leader>fh       | telescope.nvim       | normal        |
| telescope弹窗内左移光标              | \<C-h>            | telescope.nvim       | insert        |
| telescope弹窗内下移光标              | \<C-j>            | telescope.nvim       | insert        |
| telescope弹窗内上移光标              | \<C-k>            | telescope.nvim       | insert        |
| telescope弹窗内右移光标              | \<C-l>            | telescope.nvim       | insert        |
| telescope弹窗内容向上滚动            | \<C-u>            | telescope.nvim       | insert        |
| telescope弹窗内容向下滚动            | \<C-d>            | telescope.nvim       | insert        |
| telescope关闭弹窗                    | \<esc>            | telescope.nvim       | insert        |
| 打开toggleterm终端                   | <C-\\>            | toggleterm.nvim      | normal        |
| 光标跳到左边终端中                   | \<C-h>            | toggleterm.nvim      | terminal      |
| 光标跳到下边终端中                   | \<C-j>            | toggleterm.nvim      | terminal      |
| 光标跳到上边终端中                   | \<C-k>            | toggleterm.nvim      | terminal      |
| 光标跳到右边终端中                   | \<C-l>            | toggleterm.nvim      | terminal      |
| 终端进入normal模式                   | \<esc>            | toggleterm.nvim      | terminal      |
| 打开which-key                        | \<leader>         | which-key.nvim       | normal        |
| lsp.buf.declaration                  | gD                | nvim-lspconfig       | normal        |
| lsp.buf.definition                   | gd                | nvim-lspconfig       | normal        |
| lsp.buf.hover                        | gh                | nvim-lspconfig       | normal        |
| lsp.buffer.implementation            | gi                | nvim-lspconfig       | normal        |
| lsp格式化                            | \<space>f         | nvim-lspconfig       | normal        |
| 浮动窗口打开错误提示                 | \<space>\<space>e | nvim-lspconfig       | normal        |
| 跳到上一个错误                       | [d                | nvim-lspconfig       | normal        |
| 跳到下一个错误                       | ]d                | nvim-lspconfig       | normal        |
| 打开/关闭诊断错误列表                | \<space>q         | nvim-lspconfig       | normal        |
| 选中下一个补全提示信息               | \<C-j>            | nvim-cmp             | insert        |
| 选中上一个补全提示信息               | \<C-k>            | nvim-cmp             | insert        |
| 向后翻4个补全提示信息                | \<C-b>            | nvim-cmp             | insert        |
| 向前翻4个补全提示信息                | \<C-f>            | nvim-cmp             | insert        |
| 退出补全（esc也可退出）              | \<C-e>            | nvim-cmp             | insert        |
| ~~选中下一个补全提示信息（未使用）~~ | ~~\<Tab>~~        | ~~nvim-cmp~~         | ~~insert~~    |
| 选中上一个补全提示信息               | \<S-Tab>          | nvim-cmp             | insert        |
| 选中当前补全提示                     | \<CR>             | nvim-cmp             | insert        |
| 注释单行                             | gcc               | Comment.nvim         | normal,visual |
| 注释多行                             | gc                | Comment.nvim         | normal,visual |
| Gitsigns next_hunk                   | ;j                | gitsigns.nvim        | normal        |
| Gitsigns prev_hunk                   | ;k                | gitsigns.nvim        | normal        |
| Gitsigns stage_hunk                  | ;hs               | gitsigns.nvim        | normal        |
| Gitsigns reset_hunk                  | ;hr               | gitsigns.nvim        | normal        |
| Gitsigns undo_stage_hunk             | ;hu               | gitsigns.nvim        | normal        |
| Gitsigns prev_hunk                   | ;hp               | gitsigns.nvim        | normal        |
| Gitsigns stage_buffer                | ;hS               | gitsigns.nvim        | normal        |
| Gitsigns reset_buffer                | ;hR               | gitsigns.nvim        | normal        |
| blame line                           | ;hb               | gitsigns.nvim        | normal        |
| Gitsigns diffthis                    | ;hd               | gitsigns.nvim        | normal        |
| diffthis("~")                        | ;hD               | gitsigns.nvim        | normal        |
| Gitsigns toggle_current_line_blame   | ;tb               | gitsigns.nvim        | normal        |
| Gitsigns toggle_deleted              | ;td               | gitsigns.nvim        | normal        |
| Gitsigns select_hunk                 | ih                | gitsigns.nvim        | o             |
| Gitsigns select_hunk                 | ih                | gitsigns.nvim        | x             |
| Copilot 安装                         | 其实只需执行一次  | copilot.vim          |               |
| Copilot enable                       | \<leader>ce       | copilot.vim          | normal        |
| Copilot disable                      | \<leader>cd       | copilot.vim          | normal        |



which-key.nvim 的 快捷键绑定直接打开插件后查看即可，下面是配置：

```lua
local mappings = {
    ["a"] = { "<cmd>Alpha<cr>", "Welcome" },
    ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    ["r"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    ["p"] = { "<cmd>Telescope projects<cr>", "Recent Projects" },

    b = {
        name = "Buffers",
        g = { "<cmd>BufferLinePick<cr>", "Go To" },
        f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
        j = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
        k = { "<cmd>BufferLineCycleNext<cr>", "Next" },
        c = { "<cmd>Bdelete!<cr>", "Close buffer" },
        C = { "<cmd>BufferLinePickClose<cr>", "Pick which buffer to close"},
        h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
        l = { "<cmd>BufferLineCloseRight<cr>", "Close all to the right" },
    },

    g = {
        name = "Git",
        g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
        f = { "<cmd>DiffviewFileHistory<CR>", "File History" },
        j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
        k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
        R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
        s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
        S = { "<cmd>lua require 'gitsigns'.stage_buffer()<cr>", "Stage Buffer" },
        u = {
            "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
            "Undo Stage Hunk",
        },
        o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
        C = {
            "<cmd>Telescope git_bcommits<cr>",
            "Checkout commit(for current file)",
        },
        d = {
            "<cmd>Gitsigns diffthis HEAD<cr>",
            "Git Diff",
        },
        D = { "<cmd>DiffviewOpen<CR>", "Diff Project" },
    },

    -- l = {
    --     name = "LSP",
    --     l = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    --     d = {
    --         "<cmd>Telescope lsp_document_diagnostics<cr>",
    --         "Document Diagnostics",
    --     },
    --     w = {
    --         "<cmd>Telescope lsp_workspace_diagnostics<cr>",
    --         "Workspace Diagnostics",
    --     },
    --     f = { "<cmd>Format<cr>", "Format" },
    --     i = { "<cmd>LspInfo<cr>", "Info" },
    --     I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
    --     j = {
    --         "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
    --         "Next Diagnostic",
    --     },
    --     k = {
    --         "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
    --         "Prev Diagnostic",
    --     },
    --     q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
    --     r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    --     s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
    --     S = {
    --         "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
    --         "Workspace Symbols",
    --     },
    -- },

    -- c = {
    --    name = "Colorscheme",
    --    s = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    --    p = {
    --        "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    --        "Colorscheme with Preview",
    --    },
    -- },
    

    s = {
        name = "Search",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        H = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        -- H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        t = { "<cmd>Telescope live_grep<cr>", "Text" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
        l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    },


    t = {
        name = "Terminal",
        u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
        t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
        h = { "<cmd>ToggleTerm direction=horizontal size=10<cr>", "Horizontal" },
        v = { "<cmd>ToggleTerm direction=vertical size=80<cr>", "Vertical" },
    },
}

```





