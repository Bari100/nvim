return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				pickers = {
					initial_mode = "normal",
				},
				buffers = {
					ignore_current_buffer = true,
					sort_mru = true,
					initial_mode = "normal",
				},
				lsp_references = {
					initial_mode = "normal",
				},
			},
			defaults = {
				layout_config = { height = 0.99, width = 0.99 },
				mappings = {
					n = {
						["L"] = require("telescope.actions").cycle_history_next,
						["H"] = require("telescope.actions").cycle_history_prev,
						["q"] = require("telescope.actions").close,
						["l"] = require("telescope.actions").select_default,
						-- or ["l"] = "select_default"
					},
				},
				cache_picker = {
					num_pickers = 10,
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
		vim.keymap.set("n", "<leader>r", builtin.pickers, { desc = "Telescope pickers (resume searching)" })
	end,
}
