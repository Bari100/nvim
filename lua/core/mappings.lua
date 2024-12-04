local keymap = vim.keymap
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("x", "<leader>p", '"_dP')
keymap.set("x", "<leader>p", '"_dP')

-- not working. Find out why. Tried :checkhealth and it says that everything is ok with clipboard (pbcopy is used);
-- also checked :registers
-- keymap.set("n", "<leader>y", '"+y')
-- keymap.set("v", "<leader>y", '"+y')
-- keymap.set("n", "<leader>Y", '"+Y')

-- leader
vim.g.mapleader = " "

-- insert
keymap.set("i", "jj", "<Esc>")
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "jl", "<Esc>")

-- jumps
keymap.set("n", "<c-i>", "<c-s-i>") -- telescope remaps <c-i> and telescope ["<C-i>"] = false doesn't help

-- motions
keymap.set("i", "<c-l>", "<Right>")
keymap.set("i", "<c-h>", "<Left>")
keymap.set("i", "<c-j>", "<Down>")
keymap.set("i", "<c-k>", "<Up>")
keymap.set("t", "<c-l>", "<Right>")
keymap.set("t", "<c-h>", "<Left>")
keymap.set("t", "<c-j>", "<Down>")
keymap.set("t", "<c-k>", "<Up>")

-- buffers
keymap.set("n", "<leader>w", ":w<CR>")

-- diagnostic
keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Open information about the symbol" })
keymap.set("n", "gi", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap.set("n", "gI", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- neo-tree
keymap.set("n", "<leader>e", ":Neotree toggle float<CR>")
keymap.set("n", "<leader>E", ":Neotree reveal float<CR>")

-- mini-pick
-- keymap.set('n', '<leader>f', ':Pick files<CR>')
-- keymap.set('n', '<leader><leader>', ':Pick grep_live<CR>')
-- keymap.set('n', '<leader>b', ':Pick buffers<CR>')

-- mini-trailspace
keymap.set("n", "<leader>ts", ":lua MiniTrailspace.trim()<CR>")

-- mini-visits
-- keymap.set(
-- 	"n",
-- 	"<Tab>",
-- 	-- ":lua MiniVisits.select_path(nil, {sort = MiniVisits.gen_sort.default({recency_weight = 1})})"
-- 	":Pick visit_paths cwd='./' recency_weight=1<CR>"
-- )

-- navigation
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- splits
keymap.set("n", "|", ":vsplit<CR>")
keymap.set("n", "\\", ":split<CR>")

-- tabs
--keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
--keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
--keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprev<CR>")
keymap.set("n", "<leader>d", ":bdelete<CR>")

-- git
keymap.set("n", "<leader>g", ":LazyGit<CR>")

-- fzf
-- keymap.set("n", "<leader>f", ":FzfLua files<CR>")
-- keymap.set("n", "<leader>/", ":FzfLua live_grep<CR>")
-- keymap.set("n", "<Tab>", ":FzfLua buffers<CR>")
-- keymap.set("n", "<leader><leader>", ":FzfLua buffers<CR>")
-- keymap.set("n", "gr", ":FzfLua lsp_references<CR>")
-- keymap.set("n", "<leader>fh", ":FzfLua helptags<CR>")
-- keymap.set("n", "<leader>/", ":FzfLua live_grep resume=true<CR>")
-- keymap.set("n", "<leader>r", ":FzfLua resume<CR>")

-- toggleterm
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], opts)
	-- keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	-- keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	-- keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	-- keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	-- keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	-- keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- lsp
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- other
keymap.set("n", "<leader>q", ":q<CR>")
