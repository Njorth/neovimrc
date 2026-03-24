return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			on_colors = function (colors)
				colors.bg_statusline = colors.none
			end
		},
		-- config = function()
		-- 	vim.cmd([[colorscheme tokyonight]])
		-- end,
	},
	{
		"rose-pine/neovim",
		lazy = false,
		name = "rose-pine",
		opts = {
			extend_background_behind_borders = true,
			styles = {
				transparency = true,
			},
		},
		-- config = function()
		-- 	vim.cmd([[colorscheme rose-pine]])
		-- end,
	},
}
