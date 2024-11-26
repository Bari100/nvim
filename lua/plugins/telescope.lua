return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				buffers = {
					ignore_current_buffer = true,
					sort_mru = true,
					initial_mode = "normal",
				},
			},
			defaults = {
				mappings = {
					n = {

						["l"] = require("telescope.actions").select_default,
						-- or ["l"] = "select_default"
					},
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<Tab>", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Telescope lsp references" })
		vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Telescope lsp definitions" })
		vim.keymap.set("n", "gD", builtin.lsp_type_definitions, { desc = "Telescope lsp type definitions" })
	end,
}
