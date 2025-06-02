require("neogit").setup {
	integrations = {
		diffview = true
	},
}

vim.keymap.set("n", "<leader>gg", ":Neogit<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { noremap = true })
