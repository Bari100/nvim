return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("treesitter-context").setup({
			enable = true,
			multiline_threshold = 1,
		})
		vim.keymap.set("n", "<leader>c", function()
			require("treesitter-context").go_to_context(vim.v.count1)
		end, { silent = true })
	end,
}
