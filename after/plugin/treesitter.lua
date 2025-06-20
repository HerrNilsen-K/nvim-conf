vim.opt.runtimepath:append("$HOME/.local/share/treesitter")
require 'nvim-treesitter.configs'.setup {
	parser_install_dir = "$HOME/.local/share/treesitter",
	-- A list of parser names, or "all"
	ensure_installed = { "vimdoc", "lua", "c", "rust", "latex", "cpp", "make", "cmake", "glsl" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}
