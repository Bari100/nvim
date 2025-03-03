return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		config = function()
			local miniclue = require("mini.clue")
			-- require("mini.operators").setup({
			-- 	replace = {
			-- 		prefix = "",
			-- 	},
			-- })
			require("mini.pairs").setup()
			require("mini.surround").setup()
			require("mini.trailspace").setup()
			miniclue.setup({
				triggers = {
					-- Leader triggers
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },

					-- `g` key
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },

					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- `z` key
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },
				},

				clues = {
					-- Enhance this by adding descriptions for <Leader> mapping groups
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
				},
				window = { config = { width = 60 }, delay = 100 },
			})
			-- require("mini.visits").setup()
			-- require("mini.pick").setup({
			-- 	mappings = {
			-- 		choose = "<c-l>",
			-- 		move_down = "<c-j>",
			-- 		move_up = "<c-k>",
			-- 	},
			-- })
			-- require("mini.extra").setup()
			-- require("mini.completion").setup()
			-- require("mini.ai").setup()
			-- require('mini.icons').setup()
			-- require('mini.diff').setup()

			-- doesn't have block commenting
			-- require('mini.comment').setup()
			-- can't see the whole tree, manipulations are not comfortable
			-- require('mini.files').setup()
		end,
	},
}
