-- GUI AND CURSOR --
vim.cmd("highlight Normal guibg=None")
vim.opt.termguicolors = true
vim.opt.updatetime = 100
vim.opt.background = "dark"
vim.opt.fillchars = { eob = " " }
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
--vim.opt.guicursor = ""

-- LINE NUMBERS --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 7

-- LINE WRAPPING --
vim.opt.wrap = false
--vim.opt.colorcolumn = "80"

-- TABS AND INDENTATION --
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- SEARCH AND HIGHLIGHT --
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- SPLIT WINDOWS --
vim.opt.splitright = true
vim.opt.splitbelow = true

-- NVIM FILES --
vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
--vim.opt.undofile = true

-- OPTIONAL --
vim.opt.iskeyword:append("-")
vim.opt.backspace = "indent,eol,start"
--vim.opt.isfname:append("@-@")
--vim.opt.clipboard:append("unnamedplus")
