vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.o.cursorlineopt = "number"
vim.opt.scrolloff = 8
vim.opt.winborder = "bold"

vim.diagnostic.config({
	signs = false,
	underline = true,
	severity_sort = true,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	callback = function()
		vim.highlight.on_yank({ timeout = 200 })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function(ev)
		local ft = vim.bo[ev.buf].filetype
		local lang = vim.treesitter.language.get_lang(ft)
		if lang and vim.treesitter.query.get(lang, "highlights") then
			vim.treesitter.start(ev.buf, lang)
		end
	end,
})

require("orpheus.lazy")
require("orpheus.lsp")
require("orpheus.remap")

vim.cmd([[colorscheme rose-pine-moon]])
