return {
    -- tools
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "lua-language-server",
            })
        end,
    },

    { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "lazyvim.plugins.extras.lang.cmake" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.yaml" },

    -- lsp servers
    {
        "neovim/nvim-lspconfig",
        opts = {
            -- inlay_hints = { enabled = true },
            ---@type lspconfig.options
            servers = {
                clangd = {
                    cmd = {
                        "clangd",
                        "--log=verbose",
                        "--all-scopes-completion",
                        "--pch-storage=memory",
                        "--enable-config",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--function-arg-placeholders",
                        "--fallback-style=Google",
                    },
                },
            },
        },
    },
}
