local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts)

map("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

map("n", "<leader>bn", ":bn<CR>", opts)
map("n", "<leader>bp", ":bp<CR>", opts)
map("n", "<leader>bd", ":bd<CR>", opts)

map("n", "<leader>wh", "<C-w>h", opts)
map("n", "<leader>wj", "<C-w>j", opts)
map("n", "<leader>wk", "<C-w>k", opts)
map("n", "<leader>wl", "<C-w>l", opts)

map("n", "<Up>", ":resize -1<CR>", opts)
map("n", "<Down>", ":resize +1<CR>", opts)
map("n", "<Left>", ":vertical resize -1<CR>", opts)
map("n", "<Right>", ":vertical resize +1<CR>", opts)

-- mini.diff
map("n", "<leader>do", ":lua MiniDiff.toggle_overlay()<CR>", opts)

-- mini.files
map("n", "<leader>fn", ":lua MiniFiles.open()<CR>", opts)

-- mini.pick
map("n", "<leader>pf", ":Pick files<CR>", opts)
map("n", "<leader>pb", ":Pick buffers<CR>", opts)

-- lsp
map("n", "<leader>lc", ":lua vim.lsp.buf.code_action()<CR>", opts)
map("n", "<leader>lD", ":lua vim.lsp.buf.declaration()<CR>", opts)
map("n", "<leader>ld", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
map("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
map("n", "<leader>lR", ":lua vim.lsp.buf.references()<CR>", opts)
