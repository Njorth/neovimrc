return {
	"mason-org/mason.nvim",
	opts = {},
}
-- return {
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		config = function()
-- 			vim.lsp.config("lua_ls", {
-- 				settings = {
-- 					Lua = {
-- 						diagnostics = { globals = { "vim" } },
-- 						runtime = { version = "LuaJIT" },
-- 					},
-- 				},
-- 			})
-- 		end,
-- 	},
-- 	{ "mason-org/mason.nvim", opts = {} },
-- 	{
-- 		"mason-org/mason-lspconfig.nvim",
-- 		opts = {
-- 			ensure_installed = { "lua_ls" },
-- 		},
-- 	},
-- }
