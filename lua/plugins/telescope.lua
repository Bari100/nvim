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
					initial_mode = "insert",
				},
				buffers = {
					ignore_current_buffer = true,
					sort_mru = true,
					initial_mode = "insert",
					mappings = {
						i = {
							["<C-d>"] = "delete_buffer",
						},
					},
				},
				lsp_definitions = {
					initial_mode = "insert",
				},
				lsp_references = {
					initial_mode = "insert",
					cache_picker = {
						ignore_empty_prompt = false,
					},
				},
				git_status = {
					initial_mode = "insert",
					mappings = {
						i = {
							["<Tab>"] = "select_all",
						},
					},
				},
			},
			defaults = {
				layout_config = {
					height = 0.99,
					width = 0.99,
					horizontal = {
						prompt_position = "top",
					},
				},
				sorting_strategy = "ascending",
				mappings = {
					i = {
						["<CR>"] = open_single_or_multi,
					},
				},
				cache_picker = {
					num_pickers = 10,
					ignore_empty_prompt = true,
				},
			},
		})
		local builtin = require("telescope.builtin")
		keymap_set("n", "<leader>'", builtin.pickers, { desc = "Telescope pickers history" })
		keymap_set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
		-- keymap_set("n", "<leader>/", builtin.live_grep, { desc = "Telescope live grep" })
		-- NOTE: buffers are shown in Snacks picker
		-- keymap_set({ "n" }, "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
		keymap_set({ "n" }, "<leader>d", function()
			builtin.diagnostics({ bufnr = 0 })
		end, { desc = "Telescope diagnosctics" })
		keymap_set({ "n" }, "<leader>D", builtin.diagnostics, { desc = "Telescope workspace diagnosctics" })
		keymap_set("n", "gr", function()
			builtin.lsp_references({ include_current_line = true })
		end, { desc = "Telescope lsp references" })
		keymap_set("n", "gi", builtin.lsp_implementations, { desc = "Telescope lsp references" })
		keymap_set("n", "gd", builtin.lsp_definitions, { desc = "Telescope lsp definitions" })
		-- keymap_set("n", "gD", builtin.lsp_declarations, { desc = "Telescope lsp declarations" })
		keymap_set("n", "gy", builtin.lsp_type_definitions, { desc = "Telescope lsp type definitions" })
		-- NOTE: symbols are shown in trouble
		-- keymap_set("n", "<leader>s", builtin.lsp_document_symbols, { desc = "LSP Symbols" })
		keymap_set("n", "<leader>/", function()
			builtin.grep_string({
				shorten_path = true,
				word_match = "-w",
				only_sort_text = true,
				search = "",
			})
		end, { desc = "Telescope fuzzy" })
		keymap_set("v", "<leader>/", builtin.grep_string, { desc = "Search string under cursor" })

		keymap_set("n", "<leader>g", builtin.git_status, { desc = "Telescope git status" })
		-- NOTE: help pages are shown in Snacks picker
		-- keymap_set("n", "<leader>H", builtin.help_tags, { desc = "Help pages" })
		keymap_set("n", "<leader>;", builtin.command_history, { desc = "Command History" })
	end,
}
