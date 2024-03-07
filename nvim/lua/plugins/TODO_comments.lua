return {
    "folke/todo-comments.nvim",                 -- Plugin path
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency for todo-comments.nvim
    -- Configure the plugin within the `config` function. This ensures it's properly initialized.
    config = function()
        -- Here, we actually configure todo-comments.nvim with your specified options.
        require("todo-comments").setup {
            signs = true,      -- show icons in the signs column
            sign_priority = 8, -- sign priority
            -- keywords recognized as todo comments
            keywords = {
                FIX = {
                    icon = " ", -- icon used for the sign, and in search results
                    color = "error", -- can be a hex color, or a named color (see below)
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
                },
                TODO = { icon = " ", color = "info", alt = {"todo"} },
                HACK = { icon = " ", color = "#A04000" },
                WARN = { icon = " ", color = "#FF0000", alt = { "WARNING", "XXX", "warn", "warning", "xxx" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "perf", "performance", "optimize", "optimise", "OPTIMISE" } },
                NOTE = { icon = " ", color = "#00FF00", alt = { "INFO", "info", "note" } },
                TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED", "test", "testing", "passed", "failed" } },
            },
            merge_keywords = true,               -- when true, custom keywords will be merged with the defaults
            highlight = {
                multiline = true,                -- enable multine todo comments
                before = "",                     -- "fg" or "bg" or empty
                keyword = "wide",                -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
                after = "fg",                    -- "fg" or "bg" or empty
                pattern = [[.*<(KEYWORDS)\s*:]], -- pattern used for highlighting (vim regex)
                comments_only = true,            -- uses treesitter to match keywords in comments only
                max_line_len = 400,              -- ignore lines longer than this
                exclude = {},                    -- list of file types to exclude highlighting
            },
            colors = {
                error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
                warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
                info = { "DiagnosticInfo", "#2563EB" },
                hint = { "DiagnosticHint", "#10B981" },
                default = { "Identifier", "#7C3AED" },
                test = { "Identifier", "#00FF00" },
                note = { "Identifier", "#00FF00" },
            },
            search = {
                command = "rg",
                args = {
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                },
                pattern = [[\b(KEYWORDS):]], -- ripgrep regex for searching keywords
            },
        }
    end
}


-- TODO: This is the todo highlight
--it will continue until empty line

-- PERF: this is the performance highlight
-- it will continue until empty line

-- FIXME: this is the fixme highlight
-- it will continue until empty line
-- also works with FIX

-- HACK: this is the hack highlight
-- it will continue until empty line

-- WARN: this is the warning highlight
-- it will continue until empty line

-- NOTE: this is the note highlight
-- it will continue until empty line
