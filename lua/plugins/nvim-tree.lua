return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                -- Add your nvim-tree configuration here
                view = {
                    width = 30,
                    side = "left",
                },
                renderer = {
                    icons = {
                        show = {
                            git = true,
                            folder = true,
                            file = true,
                            folder_arrow = true,
                        },
                    },
                },
            })
        end,
        keys = {
            {
                "<leader>r",
                "<cmd>NvimTreeToggle<CR>",
                mode = "n",
                silent = true,
             },
             {
                "<leader>f",
                "<cmd>NvimTreeFocus<CR>",
                mode = "n",
                silent = true,
            },
        }
    }
}

