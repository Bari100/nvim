-- leader
vim.g.mapleader = " "

-- insert
vim.keymap.set("i", "jj", "<Esc>")

-- buffers
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle float<CR>")

-- mini-pick
-- vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
-- vim.keymap.set('n', '<leader><leader>', ':Pick grep_live<CR>')
-- vim.keymap.set('n', '<leader>b', ':Pick buffers<CR>')

-- mini-trailspace
vim.keymap.set("n", "<leader>ts", ":lua MiniTrailspace.trim()<CR>")

-- navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- tabs
--vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
--vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
--vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set("n", "L", ":bnext<CR>")
vim.keymap.set("n", "H", ":bprev<CR>")
vim.keymap.set("n", "<leader>d", ":bdelete<CR>")

-- git
vim.keymap.set("n", "<leader>g", ":LazyGit<CR>")

-- lsp
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })

-- other
vim.keymap.set("n", "<leader>q", ":q<CR>")
