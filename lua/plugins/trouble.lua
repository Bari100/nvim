return {
	{
		"folke/trouble.nvim",
		opts = {
			win = { position = "left", size = 0.3 },
			auto_preview = false,
			modes = {
				symbols = {
					win = {
						position = "bottom",
						size = 0.3,
					},
					auto_preview = true,
				},
			},
		}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>s",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
		},
	},
}
