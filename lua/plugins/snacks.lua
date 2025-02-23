return {
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
		},
		-- words ----------------------------------------------------
		{
			-- TODO come up with something more clever
			"<leader>*",
			function()
				Snacks.words.jump()
			end,
		},
		-- lazygit ----------------------------------------------------
		-- in commands.lua
		-- bufdelete ----------------------------------------------------
		-- in commands.lua
		-- picker ----------------------------------------------------
		-- some are in commands.lua
		-- Top Pickers & Explorer
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
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
				})
			end,
			desc = "Open file explorer in workspace root",
		},
		{
			"<leader>E",
			function()
				Snacks.explorer({
					auto_close = true,
					layout = { preset = "default" },
				})
			end,
			desc = "Open file explorer at current buffer's directory",
		},
		-- find
		{
			"<leader>b",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>f",
			function()
				Snacks.picker.files()
			end,
			desc = "Open file picker at current working directory",
		},
		{
			"<leader>g",
			function()
				Snacks.picker.git_status({
					win = {
						input = {
							keys = {
								["<Tab>"] = { "select_and_next", mode = { "i", "n" } },
							},
						},
					},
				})
			end,
			desc = "Git Status",
		},
		-- Grep
		-- NOTE maybe needed
		-- {
		-- 	"<leader>sB",
		-- 	function()
		-- 		Snacks.picker.grep_buffers()
		-- 	end,
		-- 	desc = "Grep Open Buffers",
		-- },
		{
			"<leader>W",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Visual selection or word",
			mode = { "n", "x" },
		},
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
		{
			"<leader>;",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Command History",
		},
		{
			"<leader>d",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Open diagnostic picker",
		},
		{
			"<leader>D",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Open workspace diagnostic picker",
		},
		{
			"<leader>H",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Pages",
		},
		{
			"<leader>j",
			function()
				Snacks.picker.jumps()
			end,
			desc = "Jumps",
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
		{
			"<leader>'",
			function()
				Snacks.picker.resume()
			end,
			desc = "Resume",
		},
		-- LSP
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gi",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"gy",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},
		{
			"<leader>s",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"<leader>S",
			function()
				Snacks.picker.lsp_workspace_symbols()
			end,
			desc = "LSP Workspace Symbols",
		},
	},
}
