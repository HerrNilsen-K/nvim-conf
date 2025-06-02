local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Fuzzy finder
	{
		"nvim-telescope/telescope.nvim", branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Tree-sitter
	{
		"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"
	},
	"nvim-treesitter/playground",

	-- Harpoon
	"theprimeagen/harpoon",

	-- Better undoing
	"mbbill/undotree",

	-- NerdTree
	"preservim/nerdtree",

	-- Visual related plugins
	{
		"catppuccin/nvim", name = "catppuccin", priority = 1000
	},
	"EdenEast/nightfox.nvim",
	"doki-theme/doki-theme-vim",
	"vim-airline/vim-airline",

	-- Git related plugins
	{
		"TimUntersberger/neogit",
		dependencies = "nvim-lua/plenary.nvim"
	},
	"nvim-tree/nvim-web-devicons",
	"sindrets/diffview.nvim",
	"airblade/vim-gitgutter",

	-- Latex related plugins
	"lervag/vimtex",

	-- Markdown
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- Editing related plugins
	"tpope/vim-surround",
	"tpope/vim-commentary",
	"pixelastic/vim-undodir-tree",

	-- Completion
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},

			-- Snippets
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		}
	},

	-- Icons
	-- must be loaded last
	-- needs Nerd Font from https://github.com/ryanoasis/nerd-fonts
	"ryanoasis/vim-devicons",
})
