return {
    -- gitsigns => 左侧git提示    
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require("gitsigns")
        gitsigns.setup({
            -- 字母图标 A 增加，C修改，D 删除
            signs = {
                add = { hl = "GitSignsAdd", text = "A|", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
                change = { hl = "GitSignsChange", text = "M|", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
                delete = { hl = "GitSignsDelete", text = "D_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
                topdelete = { hl = "GitSignsDelete", text = "D‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
                changedelete = { hl = "GitSignsChange", text = "D~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
            },
            -- 显示图标
            signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
            -- 行数高亮
            numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
            linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
            word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
            watch_gitdir = {
                interval = 1000,
                follow_files = true,
            },
            attach_to_untracked = true,
            current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
                delay = 1000,
                ignore_whitespace = false,
            },
            current_line_blame_formatter_opts = {
                relative_time = false,
            },
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil, -- Use default
            max_file_length = 40000,
            preview_config = {
                -- Options passed to nvim_open_win
                border = "single",
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1,
            },
            yadm = {
                enable = false,
            },
            -- keymapping
            on_attach = function(bufnr)
                local function map(mode, lhs, rhs, opts)
                    opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
                    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
                end

                -- Navigation
                map('n', ';j', ':Gitsigns next_hunk<CR>')
                map('n', ';k',':Gitsigns prev_hunk<CR>')

                -- Actions 
                map('n', ';hs', ':Gitsigns stage_hunk<CR>')
                map('n', ';hr', ':Gitsigns reset_hunk<CR>')
                map('n', ';hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
                map('n', ';hS', '<cmd>Gitsigns stage_buffer<CR>')
                map('n', ';hR', '<cmd>Gitsigns reset_buffer<CR>')
                map('n', ';hp', '<cmd>Gitsigns preview_hunk<CR>')
                map('n', ';hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
                map('n', ';tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
                map('n', ';hd', '<cmd>Gitsigns diffthis<CR>')
                map('n', ';hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
                map('n', ';td', '<cmd>Gitsigns toggle_deleted<CR>')
                -- Text object
                map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
                map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
            end
        })
    end
}
