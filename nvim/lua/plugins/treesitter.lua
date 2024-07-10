return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            sync_install = true,
            auto_install = true,
            highlight = {
                enable = true,
                disable = {},
            },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "cmake",
                "cpp",
                "c",
                "gitignore",
                "go",
                "rust",
                "lua",
                "python",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
