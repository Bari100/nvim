-- local keymap_set = require("utils.keymap-utils").keymap_set
local keymap_set = vim.keymap.set

local function open_single_or_multi(bufnr)
	local actions = require("telescope.actions")
	local actions_state = require("telescope.actions.state")
	local single_selection = actions_state.get_selected_entry()
	local multi_selection = actions_state.get_current_picker(bufnr):get_multi_selection()
	if not vim.tbl_isempty(multi_selection) then
		actions.close(bufnr)
		for _, file in pairs(multi_selection) do
			if file.path ~= nil then
				vim.cmd(string.format("edit %s", file.path))
			end
		end
		vim.cmd(string.format("edit %s", single_selection.path))
	else
		actions.select_default(bufnr)
	end
end

return {
	"nvim-telescope/telescope.nvim",
	-- tag = "0.1.8",
	branch = "master",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			-- any picker (buffers, lsp_references, pickers, git_status etc.) except
			-- its own options also supports default options (initial_mode, cache_picker etc.)
			pickers = {
				pickers = {
					initial_mode = "normal",
				},
				buffers = {
					ignore_current_buffer = true,
					sort_mru = true,
					initial_mode = "normal",
					mappings = {
						n = {
							["d"] = "delete_buffer",
						},
					},
				},
				lsp_definitions = {
					initial_mode = "normal",
				},
				lsp_references = {
					initial_mode = "normal",
					cache_picker = {
						ignore_empty_prompt = false,
					},
				},
				git_status = {
					initial_mode = "normal",
					mappings = {
						n = {
							["<Tab>"] = "select_all",
						},
					},
				},
			},
			defaults = {
				layout_config = { height = 0.99, width = 0.99 },
				mappings = {
					n = {
						["L"] = require("telescope.actions").cycle_history_next,
						["H"] = require("telescope.actions").cycle_history_prev,
						["q"] = require("telescope.actions").close,
						-- ["l"] = require("telescope.actions").select_default, -- or ["l"] = "select_default"
						["l"] = open_single_or_multi,
					},
				},
				cache_picker = {
					num_pickers = 10,
					ignore_empty_prompt = true,
				},
			},
		})
		local builtin = require("telescope.builtin")
		keymap_set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
		keymap_set("n", "<leader>/", builtin.live_grep, { desc = "Telescope live grep" })
		keymap_set({ "n", "i", "v" }, "<Tab>", builtin.buffers, { desc = "Telescope buffers" })
		keymap_set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		keymap_set("n", "gr", builtin.lsp_references, { desc = "Telescope lsp references" })
		keymap_set("n", "gd", builtin.lsp_definitions, { desc = "Telescope lsp definitions" })
		keymap_set("n", "gD", builtin.lsp_type_definitions, { desc = "Telescope lsp type definitions" })
		keymap_set("n", "<leader>r", builtin.pickers, { desc = "Telescope pickers (resume searching)" })
		keymap_set("n", "<leader>s", builtin.git_status, { desc = "Telescope git status" })
	end,
}
