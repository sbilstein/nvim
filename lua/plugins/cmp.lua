return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "dcampos/nvim-snippy" },
            { "dcampos/cmp-snippy" },
        },
        config = function()
            local cmp = require("cmp")
            local snippy = require("snippy")
            cmp.setup({
                mapping = {
                    ['<C-e>'] = cmp.mapping.complete(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                },
                snippet = {
                    expand = function(args)
                        snippy.expand_snippet(args.body)
                    end,
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp", priority = 1000 },
                    { name = "snippy",   priority = 750 },
                    { name = "buffer",   priority = 500 },
                    { name = "path",     priority = 250 },
                }),
            })
            vim.o.pumheight = 25
        end,
    },
}
