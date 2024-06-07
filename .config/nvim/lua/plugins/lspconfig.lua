return {
	{ "williamboman/mason.nvim", opts = {} },
	{ "williamboman/mason-lspconfig.nvim", opts = {} },
	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/cmp-nvim-lsp", { "folke/lazydev.nvim", ft = "lua", opts = {} } },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lspconfig = require("lspconfig")
			local mason_lspconfig = require("mason-lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function()
					vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })
					vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover symbol" })
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
					vim.keymap.set("n", "gtd", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
					vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
				end,
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
}
