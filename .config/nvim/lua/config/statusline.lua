local function get_status_line()
	local mode = "%{%v:lua.string.upper(v:lua.vim.fn.mode())%}"
	local git_branch = "%{get(b:,'gitsigns_head','')}"
	local file_path = "%F"
	local line_count = "%=[%l/%L]"

	return table.concat({ mode, git_branch, file_path, line_count }, " ")
end

vim.opt.statusline = get_status_line()
