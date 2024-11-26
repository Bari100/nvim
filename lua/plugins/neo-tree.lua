return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["l"] = "open",
					["J"] = "expand_all_nodes",
					["h"] = "close_node",
					["K"] = "close_all_nodes",
				},
			},
		})
	end,
}
