return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "ast_grep", "golangci_lint_ls", "gopls","html", "phpactor" }
        }
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.phpactor.setup({})
            lspconfig.ast_grep.setup({})
            lspconfig.golangci_lint_ls.setup({})
            lspconfig.html.setup({})
            lspconfig.gopls.setup({})
            vim.keymap.set('n', 'I', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
