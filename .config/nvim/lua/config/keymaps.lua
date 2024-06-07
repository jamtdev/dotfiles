vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>e", ":Rexplore<CR>", { desc = "Explore" })
