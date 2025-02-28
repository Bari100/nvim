return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- some plugins are not in the opts and just are configured in keys
			scratch = {
				ft = "markdown",
			},
			indent = {},
			scroll = {},
			notifier = {},
			picker = {},
			explorer = {},
			zen = {
				toggles = {
					dim = false,
				},
				win = {
					backdrop = { transparent = false },
					width = 100, -- full width
				},
			},
			words = {},
			lazygit = {},
		},
		keys = {
			-- scratch ----------------------------------------------------
			{
				"<leader>.",
				function()
					Snacks.scratch()
				end,
				desc = "Toggle Scratch Buffer",
			},
			-- {
			-- 	"<leader>.s",
			-- 	function()
			-- 		Snacks.scratch.select()
			-- 	end,
			-- 	desc = "Select Scratch Buffer",
			-- },
			-- zen ----------------------------------------------------
			{
				"<leader>z",
				function()
					Snacks.zen()
				end,
				desc = "Zen mode",
			},
			-- words ----------------------------------------------------
			{
				-- TODO: come up with something more clever
				"<leader>*",
				function()
					Snacks.words.jump()
				end,
				desc = "Navigate to next LSP reference",
			},
			-- lazygit ----------------------------------------------------
			-- in commands.lua
			-- bufdelete ----------------------------------------------------
			-- in commands.lua
			-- picker ----------------------------------------------------
			-- some are in commands.lua
			-- Top Pickers & Explorer
			{
				"<leader>n",
				function()
					Snacks.picker.notifications()
				end,
				desc = "Notification History",
			},
			{
				"<leader>e",
				function()
					Snacks.explorer({
						auto_close = true,
						follow_file = false,
						layout = { preset = "default" },
						focus = "input",
					})
				end,
				desc = "Open file explorer in workspace root",
			},
			{
				"<leader>E",
				function()
					Snacks.picker.explorer({
						auto_close = true,
						layout = { preset = "default" },
						focus = "input",
					})
				end,
				desc = "Open file explorer at current buffer's directory",
			},
			-- find
			-- Grep
			-- NOTE maybe needed
			-- {
			-- 	"<leader>sB",
			-- 	function()
			-- 		Snacks.picker.grep_buffers()
			-- 	end,
			-- 	desc = "Grep Open Buffers",
			-- },
			-- search
			{
				'<leader>"',
				function()
					Snacks.picker.registers()
				end,
				desc = "Registers",
			},
			{
				"<leader>l",
				function()
					Snacks.picker.lines()
				end,
				desc = "Buffer Lines",
			},
			-- {
			-- 	"<leader>sk",
			-- 	function()
			-- 		Snacks.picker.keymaps()
			-- 	end,
			-- 	desc = "Keymaps",
			-- },
			-- {
			-- 	"<leader>sl",
			-- 	function()
			-- 		Snacks.picker.loclist()
			-- 	end,
			-- 	desc = "Location List",
			-- },
			-- {
			-- 	"<leader>sq",
			-- 	function()
			-- 		Snacks.picker.qflist()
			-- 	end,
			-- 	desc = "Quickfix List",
			-- },
			{
				"<leader>m",
				function()
					Snacks.picker.marks()
				end,
				desc = "Marks",
			},
		},
	},
}
