-- Persistent undo
vim.o.undofile = true

vim.g.mapleader = " "
-- localleader is \

vim.g.airline_powerline_fonts = true
vim.cmd [[syntax on]]
vim.o.number = true
vim.o.relativenumber = true

vim.o.clipboard = "unnamedplus"

-- Number of spaces to use for each step of (auto)indent.
vim.o.shiftwidth = 4

-- Number of spaces that a <Tab> in the file counts for.
vim.o.tabstop = 4

-- Use tabs not spaces
vim.o.softtabstop = 0
vim.o.expandtab = false

-- better line breaks
vim.o.lbr = true

-- break lines at edge of window
vim.o.wrap = true

-- copy indent from current line when starting a new line
vim.o.ai = true

-- smart indent when starting a new line
vim.o.si = true

-- keys that allow switching to previous/next line
vim.opt.whichwrap:append("<,>,h,l")

vim.o.ignorecase = true
-- Do not ignore case if search term contains upper case
vim.o.smartcase = true

-- Search down into sub folders
-- Provides tab-completion for all file-related tasks
vim.opt.path:append("**")

-- Display all matching files when we tab complete
vim.o.wildmenu = true

-- mark column 80
--vim.opt.colorcolumn = "80"

-- do not highlight search matches
vim.opt.hlsearch = false

-- jump to position matching the search pattern while typing it
vim.opt.incsearch = true
