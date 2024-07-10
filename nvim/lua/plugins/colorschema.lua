return {
    -- disable default colorscheme
    { "tokyonight.nvim", enabled = false },

    -- add solarized-osaka
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        opts = function()
            return {
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            }
        end,
    },

    -- configure LazyVim to load solarized-osaka
    {
        "LazyVim/LazyVim",
        import = "lazyvim.plugins",
        opts = {
            colorscheme = "solarized-osaka",
            news = {
                lazyvim = true,
                neovim = true,
            },
        },
    },

    -- Go forward/backward with square brackets
    {
        "echasnovski/mini.bracketed",
        event = "BufReadPost",
        config = function()
            local bracketed = require("mini.bracketed")
            bracketed.setup({
                file = { suffix = "" },
                window = { suffix = "" },
                quickfix = { suffix = "" },
                yank = { suffix = "" },
                treesitter = { suffix = "n" },
            })
        end,
    },
}
