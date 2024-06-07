vim.o.termguicolors = true

vim.g.netrw_liststyle = 0

vim.o.signcolumn = "yes"
vim.o.number = true
vim.o.numberwidth = 5
vim.o.statuscolumn = "%=%l %s"

vim.o.cursorline = true
vim.o.cursorlineopt = "number"

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.diagnostic.config({
	signs = false,
})
