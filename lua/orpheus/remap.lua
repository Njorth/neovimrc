-- misc
vim.keymap.set("n", "tr", vim.cmd.Ex)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Quickfix list" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Tab indent" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Tab un-indent" })

-- window navigation
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus upper window" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>wd", vim.diagnostic.open_float, { desc = "Show diagnostics under cursor" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Grep string" })
vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Goto definition" })
