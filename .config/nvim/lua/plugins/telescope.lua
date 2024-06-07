return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		telescope.setup({
			pickers = {
				buffers = {
					mappings = {
						i = {
							["<c-d>"] = actions.delete_buffer,
						},
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search files" })
		vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search buffers" })
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Live grep" })
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search help tags" })
		vim.keymap.set("n", "<leader>sg", builtin.git_status, { desc = "Search git status" })
	end,
}
