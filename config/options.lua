vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0

vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent

vim.opt.tabstop = 2

vim.opt.wrap = false
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.path:append({ "**" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.formatoptions:append({ "r" })

vim.opt.backup = false -- No backup file
vim.opt.writebackup = false -- Don't make a backup before overwriting
vim.opt.swapfile = false -- Disable swap files (optional)

vim.cmd([[let &t_Cs="\e[4:3m"]])
vim.cmd([[let &t_Ce="\e[4:0m"]])
