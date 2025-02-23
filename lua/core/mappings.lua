local keymap_set = vim.keymap.set
local keymap_del = vim.keymap.del

keymap_set("v", "J", ":m '>+1<CR>gv=gv")
keymap_set("v", "K", ":m '<-2<CR>gv=gv")
keymap_set("x", "<leader>p", '"_dP')
keymap_set("x", "<leader>p", '"_dP')

-- TODO not working. Find out why. Tried :checkhealth and it says that everything is ok with clipboard (pbcopy is used);
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
keymap_set("n", "<", "<<")
keymap_set("n", ">", ">>")

-- selection
-- TODO this all doesn't work
-- vim.keymap.del("n", "%")
-- vim.api.nvim_set_keymap("n", "%", "<Nop>", { noremap = true, silent = true })
-- vim.keymap.set("n", "%", "<Nop>", { noremap = true, silent = true })
-- keymap_set("n", "%", "ggVG")
keymap_set("n", "x", "V")

-- buffers
keymap_set("n", "<leader>w", ":w<CR>", { desc = "Write changes to disc" })
keymap_set("n", "gn", ":bnext<CR>")
keymap_set("n", "gp", ":bprev<CR>")
-- TODO fix not finding buffer if file was deleted (or buffer was closed?)
keymap_set("n", "ga", ":b#<CR>", { desc = "Go to last accessed file" })

-- diagnostic
keymap_set("n", "<leader>k", vim.lsp.buf.hover, { desc = "Show docs for item under cursor" })
keymap_set("n", "<leader>K", vim.diagnostic.open_float, { desc = "Show diagnostics for item under cursor" })

-- neo-tree
keymap_set("n", "<leader>e", ":Neotree toggle float<CR>")
keymap_set("n", "<leader>E", ":Neotree reveal float<CR>")

-- mini-trailspace
keymap_set("n", "<leader>ts", ":lua MiniTrailspace.trim()<CR>")

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
end, { expr = true, desc = "Comment/uncomment" })
keymap_set("x", "<leader>c", "<Plug>(comment_toggle_linewise_visual)", { desc = "Comment/uncomment selection" })
keymap_set("x", "<leader>C", "<Plug>(comment_toggle_blockwise_visual)", { desc = "Block comment/uncomment selection" })

-- lsp
-- TODO maybe using <cmd> is redundant here
keymap_set(
	"n",
	"<leader>r",
	"<cmd>lua vim.lsp.buf.rename()<CR>",
	{ noremap = true, silent = true, desc = "Rename symbol" }
)
keymap_set(
	"n",
	"<leader>o",
	"<cmd>lua vim.lsp.buf.format()<CR>",
	{ noremap = true, silent = true, desc = "Format the file" }
)
keymap_set(
	{ "n", "x" },
	"<leader>a",
	'<cmd>lua require("fastaction").code_action()<CR>',
	-- { buffer = bufnr },
	{ desc = "Perform code action" }
)

-- confirm-quit
keymap_set("n", "<leader>q", ":ConfirmQuit<CR>", { desc = "Close the editor" })

-- deleting keymaps
keymap_del("n", "gcc")
keymap_del("x", "gc")
