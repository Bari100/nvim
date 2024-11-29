return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		config = function()
			local hipatterns = require("mini.hipatterns")
			hipatterns.setup({
				highlighters = {
					-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
					fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
					hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

					-- Highlight hex color strings (`#rrggbb`) using that color
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})
			require("mini.operators").setup({
				replace = {
					prefix = "",
				},
			})
			require("mini.indentscope").setup()
			require("mini.pairs").setup()
			require("mini.statusline").setup()
			require("mini.surround").setup()
			require("mini.tabline").setup()
			require("mini.trailspace").setup()
			require("mini.completion").setup()
			-- require("mini.ai").setup()
			-- require('mini.icons').setup()
			-- require('mini.diff').setup()
			-- require("mini.pick").setup()
			-- require("mini.extra").setup()

			-- doesn't have block commenting
			-- require('mini.comment').setup()
			-- can't see the whole tree, manipulations are not comfortable
			-- require('mini.files').setup()
		end,
	},
}
