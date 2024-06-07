return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				overrides = {
					SignColumn = { bg = "none" },
				},
			})

			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf = require("fzf-lua")

			fzf.setup({ fzf_colors = true })

			vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "Search files" })
			vim.keymap.set("n", "<leader>sb", fzf.buffers, { desc = "Search buffers" })
		end,
	},
	{ "tpope/vim-vinegar" },
}
