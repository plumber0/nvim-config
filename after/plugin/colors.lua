function ColorMyPencils(color)
	color = color or "dark"

	vim.cmd('set termguicolors') -- Enable true colors support
	vim.g.ayucolor = color -- For dark version of theme
	vim.cmd('colorscheme ayu')

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

