-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- ~/.config/nvim/lua/plugins/keybindings.lua
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>t", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })

--vim.api.nvim_set_keymap('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })

-- Copy current line and paste it below with Alt + Down
vim.keymap.set("n", "<A-Down>", "yyP", { desc = "Copy line down" })

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--Select all
keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)

--Tabs
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)
--buffers
--00000keymap.set("n", "<Tab>", ":bnext<CR>", opts)
--keymap.set("n", "<S-Tab>", ":bprev<CR>", opts)

--Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

--Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

--live-server
keymap.set("n", "<leader>ls", ":!live-server &<CR>", opts)

--IncRename
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Incremental Rename" })

--run nodejs
vim.keymap.set("n", "r", function()
  vim.cmd("w") -- Save the file
  local current_file = vim.fn.expand("%:p") -- Get full file path
  vim.cmd("!node " .. current_file) -- Run the file using Node.js
end)
