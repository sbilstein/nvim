return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "b0o/schemastore.nvim" },
            { "WhoIsSethDaniel/mason-tool-installer.nvim" },
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "buf_ls",
                    "clangd",
                    "emmet_language_server",
                    "html",
                    "jdtls",
                    "jsonls",
                    "lemminx",
                    "lua_ls",
                    "pylsp",
                    "rust_analyzer",
                    "tailwindcss",
                    "ts_ls",
                    "yamlls",
                },
                automatic_installation = true,
            })
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "clang-format",
                    "codelldb",
                    "cpptools",
                    "debugpy",
                    "eslint_d",
                    "flake8",
                    "hadolint",
                    "isort",
                    "jq",
                    "js-debug-adapter",
                    "markdownlint",
                    "prettier",
                    "shfmt",
                    "stylua",
                    "systemdlint",
                }
            })
            local lspconfig = require("lspconfig")
            lspconfig.ts_ls.setup({
              filetypes = {
                            "javascript",
                            "javascriptreact",
                            "typescript",
                            "typescriptreact",
              },
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
              cmd = { "yarn", "exec", "typescript-language-server", "--stdio" },
              root_dir = vim.fs.dirname(vim.fs.find({ '.yarnrc.yml', 'package.json' }, { upward = true })[1]),
              settings = {
                typescript = {
                  inlayHints = {
                    includeInlayParameterNameHints = 'all',
                    includeInlayFunctionParameterTypeHints = true,
                  },
                },
              },

            })
        end
      }
}

