-- local keymap_set = require("utils.keymap-utils").keymap_set
local keymap_set = vim.keymap.set

keymap_set("v", "J", ":m '>+1<CR>gv=gv")
keymap_set("v", "K", ":m '<-2<CR>gv=gv")
keymap_set("x", "<leader>p", '"_dP')
keymap_set("x", "<leader>p", '"_dP')

-- not working. Find out why. Tried :checkhealth and it says that everything is ok with clipboard (pbcopy is used);
-- also checked :registers
keymap_set("n", "<leader>y", '"+Y')
-- keymap_set("v", "<leader>y", '"+y')
-- keymap_set("n", "<leader>Y", '"+Y')

-- leader
vim.g.mapleader = " "

-- insert
keymap_set("i", "jj", "<Esc>")
keymap_set("i", "jk", "<Esc>")
keymap_set("i", "jl", "<Esc>")

-- jumps
keymap_set("n", "<c-i>", "<c-s-i>") -- telescope remaps <c-i> and using in telescope config ["<C-i>"] = false doesn't help

-- motions
keymap_set("i", "<c-l>", "<Right>")
keymap_set("i", "<c-h>", "<Left>")
keymap_set("i", "<c-j>", "<Down>")
keymap_set("i", "<c-k>", "<Up>")
keymap_set("t", "<c-l>", "<Right>")
keymap_set("t", "<c-h>", "<Left>")
keymap_set("t", "<c-j>", "<Down>")
keymap_set("t", "<c-k>", "<Up>")
keymap_set({ "n", "x" }, "gh", "0")
keymap_set({ "n", "x" }, "gs", "^")
keymap_set({ "n", "x" }, "gl", "g_")
keymap_set({ "n", "x" }, "ge", "G")

-- selection
-- NOTE this all doesn't work
-- vim.keymap.del("n", "%")
-- vim.api.nvim_set_keymap("n", "%", "<Nop>", { noremap = true, silent = true })
-- vim.keymap.set("n", "%", "<Nop>", { noremap = true, silent = true })
-- keymap_set("n", "%", "ggVG")
keymap_set("n", "x", "V")

-- buffers
keymap_set("n", "<leader>w", ":w<CR>")
--keymap_set('n', '<Tab>', ':BufferLineCycleNext<CR>')
--keymap_set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
--keymap_set('n', '<leader>x', ':BufferLinePickClose<CR>')
keymap_set("n", "gn", ":bnext<CR>")
keymap_set("n", "gp", ":bprev<CR>")
-- keymap_set("n", "<leader>B", ":bdelete<CR>", { desc = "Close the current buffer" })
-- keymap_set("n", "<leader>Bc", ":%bdelete<CR>")
-- TODO fix not finding buffer if file was deleted (or buffer was closed?)
keymap_set("n", "ga", ":b#<CR>")

-- diagnostic
keymap_set("n", "<leader>k", vim.lsp.buf.hover, { desc = "Open information about the symbol" })
keymap_set("n", "<leader>D", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap_set("n", "<leader>d", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- neo-tree
keymap_set("n", "<leader>e", ":Neotree toggle float<CR>")
keymap_set("n", "<leader>E", ":Neotree reveal float<CR>")

-- mini-pick
-- keymap_set('n', '<leader>f', ':Pick files<CR>')
-- keymap_set('n', '<leader><leader>', ':Pick grep_live<CR>')
-- keymap_set('n', '<leader>b', ':Pick buffers<CR>')

-- mini-trailspace
keymap_set("n", "<leader>ts", ":lua MiniTrailspace.trim()<CR>")

-- mini-visits
-- keymap_set(
-- 	"n",
-- 	"<Tab>",
-- 	-- ":lua MiniVisits.select_path(nil, {sort = MiniVisits.gen_sort.default({recency_weight = 1})})"
-- 	":Pick visit_paths cwd='./' recency_weight=1<CR>"
-- )

-- navigation
keymap_set("n", "<c-k>", ":wincmd k<CR>")
keymap_set("n", "<c-j>", ":wincmd j<CR>")
keymap_set("n", "<c-h>", ":wincmd h<CR>")
keymap_set("n", "<c-l>", ":wincmd l<CR>")

-- splits
keymap_set("n", "|", ":vsplit<CR>")
keymap_set("n", "\\", ":split<CR>")

-- git
keymap_set("n", "<leader>g", ":LazyGit<CR>")

-- comment
keymap_set("n", "<leader>c", function()
	return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)" or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })
keymap_set("x", "<leader>c", "<Plug>(comment_toggle_linewise_visual)")
keymap_set("x", "<leader>C", "<Plug>(comment_toggle_blockwise_visual)")

-- lsp
keymap_set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
keymap_set(
	"n",
	"<leader>o",
	"<cmd>lua vim.lsp.buf.format()<CR>",
	{ noremap = true, silent = true },
	{ desc = "Format the file" }
)
keymap_set(
	{ "n", "x" },
	"<leader>a",
	'<cmd>lua require("fastaction").code_action()<CR>',
	-- { buffer = bufnr },
	{ desc = "Perform code action" }
)

-- refactoring
-- keymap_set("x", "<leader>re", ":Refactor extract ")
-- keymap_set("x", "<leader>rf", ":Refactor extract_to_file ")
--
-- keymap_set("x", "<leader>rv", ":Refactor extract_var ")
--
-- keymap_set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")
--
-- keymap_set("n", "<leader>rI", ":Refactor inline_func")
--
-- keymap_set("n", "<leader>rb", ":Refactor extract_block")
-- keymap_set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- other
keymap_set("n", "<leader>q", ":q<CR>")

-- deleting keymaps
vim.keymap.del("n", "gcc")
vim.keymap.del("x", "gc")
