return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				-- The border key is *almost* the same as 'nvim_open_win'
				-- see :h nvim_open_win for details on borders however
				-- the 'curved' border is a custom border type
				-- not natively supported but implemented in this plugin.
				border = "double", --[[ | 'curved' | 'shadow'  ]]
				-- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
				width = 150,
				-- height = <value>,
			},
		})
	end,
}
