return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format file",
		},
	},
	opts = {
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			graphql = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" },
		},
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 500,
		},
	},
}
