-- The facto de standart
vim.keymap.set("i", "jj", "<Esc>");
vim.keymap.set("t", "jj", "<C-\\><C-n>");

-- Move easier between windows
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

-- Keep cursor position when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in center when jumping half a page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Position search result in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- Remove search highlighting
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Spell checking
vim.keymap.set("n", "<leader>s", ":set nospell<CR>", { noremap = true })
vim.keymap.set("n", "<leader>sen", ":setlocal spell spelllang=en_gb<CR>", { noremap = true })
vim.keymap.set("n", "<leader>sde", ":setlocal spell spelllang=de_20<CR>", { noremap = true })

-- Do not replace content of past buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Format buffer according to LSP rules
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
