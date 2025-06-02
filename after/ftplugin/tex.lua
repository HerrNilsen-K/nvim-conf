-- vimtex config
vim.g.tex_flavor = "latex"
vim.g.vimtex_compiler_latexmk = {
	build_dir = "build",
	options = {
		"-shell-escape",
		"-verbose",
		"-file-line-error",
		"-synctex=1",
		"-interaction=nonstopmode",
	},
}
vim.g.vimtex_quickfix_ignore_filters = {
      'Underfull',
      'Overfull',
      }

vim.keymap.set("n", "<leader>m", ":w<CR>:!make<CR>", { noremap = true })
vim.keymap.set("n", "<leader>M",
	":silent execute '! if [[ -f %<.pdf ]]; then zathura %<.pdf & fi'<CR> :silent execute '! if [[ -f %<_EWH.pdf ]]; then zathura %<_EWH.pdf & fi'<CR> :silent execute '! if [[ -f %<_notes.pdf ]]; then zathura %<_notes.pdf & fi'<CR> :silent execute '! if [[ -f build/%<.pdf ]]; then zathura build/%<.pdf & fi'<CR>"
	, { noremap = true })
vim.keymap.set("n", "<leader>e", ":vsplit ewh.tex<CR>:wincmd L<CR>", { noremap = true })
