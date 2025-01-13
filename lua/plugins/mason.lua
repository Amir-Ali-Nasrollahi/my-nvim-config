return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ast_grep", "golangci_lint_ls", "gopls", "html", "phpactor" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.phpactor.setup({
				capabilities = capabilities,
            })
--			lspconfig.ast_grep.setup({
--				capabilities = capabilities,
--            })
			lspconfig.golangci_lint_ls.setup({
				capabilities = capabilities,
            })
			lspconfig.html.setup({
				capabilities = capabilities,
            })
			lspconfig.gopls.setup({
				capabilities = capabilities,
            })
			vim.keymap.set("n", "I", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
