return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		config = function()
			require("lazydev").setup({})
		end,
	},
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
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"tsserver",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsp_on_attach = function()
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover symbol" })
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
				vim.keymap.set("n", "gtd", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
				vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
			end

			local lspconfig = require("lspconfig")

			local servers = {
				"lua_ls",
				"tsserver",
				"rust_analyzer",
			}

			for _, server in pairs(servers) do
				lspconfig[server].setup({
					on_attach = lsp_on_attach,
					capabilities = capabilities,
				})
			end
		end,
	},
}
