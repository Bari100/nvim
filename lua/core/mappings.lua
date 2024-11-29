-- leader
vim.g.mapleader = " "

-- insert
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "jl", "<Esc>")

-- motions
vim.keymap.set("i", "<c-l>", "<Right>")
vim.keymap.set("i", "<c-h>", "<Left>")
vim.keymap.set("i", "<c-j>", "<Down>")
vim.keymap.set("i", "<c-k>", "<Up>")
vim.keymap.set("t", "<c-l>", "<Right>")
vim.keymap.set("t", "<c-h>", "<Left>")
vim.keymap.set("t", "<c-j>", "<Down>")
vim.keymap.set("t", "<c-k>", "<Up>")

-- buffers
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- diagnostic
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Open information about the symbol" })
vim.keymap.set("n", "gi", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "gI", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle float<CR>")
vim.keymap.set("n", "<leader>E", ":Neotree reveal float<CR>")

-- mini-pick
-- vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
-- vim.keymap.set('n', '<leader><leader>', ':Pick grep_live<CR>')
-- vim.keymap.set('n', '<leader>b', ':Pick buffers<CR>')

-- mini-trailspace
vim.keymap.set("n", "<leader>ts", ":lua MiniTrailspace.trim()<CR>")

-- mini-visits
-- vim.keymap.set(
-- 	"n",
-- 	"<Tab>",
-- 	-- ":lua MiniVisits.select_path(nil, {sort = MiniVisits.gen_sort.default({recency_weight = 1})})"
-- 	":Pick visit_paths cwd='./' recency_weight=1<CR>"
-- )

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

-- fzf
-- vim.keymap.set("n", "<leader>f", ":FzfLua files<CR>")
-- vim.keymap.set("n", "<leader>/", ":FzfLua live_grep<CR>")
vim.keymap.set("n", "<Tab>", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<leader><leader>", ":FzfLua buffers<CR>")
-- vim.keymap.set("n", "gr", ":FzfLua lsp_references<CR>")
-- vim.keymap.set("n", "<leader>fh", ":FzfLua helptags<CR>")
-- vim.keymap.set("n", "<leader>/", ":FzfLua live_grep resume=true<CR>")
-- vim.keymap.set("n", "<leader>r", ":FzfLua resume<CR>")

-- toggleterm
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], opts)
	-- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	-- vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	-- vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	-- vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	-- vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	-- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- lsp
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- other
vim.keymap.set("n", "<leader>q", ":q<CR>")
