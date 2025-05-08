return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                },
                auto_install = true, -- auto install parsers when opening a file
                sync_install = false, -- non-sync install
                ignore_install = {},
                ensure_installed = {
                    "lua",
                    "python",
                    "javascript",
                    "java",
                    "bash",
                    "typescript",
                    "json",
                    "html",
                },
            })
        end,
    },
}

