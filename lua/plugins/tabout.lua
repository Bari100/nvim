return {
	{
		"abecodes/tabout.nvim",
		lazy = false,
		config = function()
			require("tabout").setup()
		end,
		event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
		priority = 1000,
	},
}
