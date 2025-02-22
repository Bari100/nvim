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
		dim = {},
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
		-- {
		-- 	"<leader>sd",
		-- 	function()
		-- 		Snacks.dim()
		-- 	end,
		-- },
		-- {
		-- 	"<leader>sD",
		-- 	function()
		-- 		Snacks.dim.disable()
		-- 	end,
		-- },
		-- Top Pickers & Explorer
		-- TODO
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
		-- {
		-- 	"<leader>fc",
		-- 	function()
		-- 		Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
		-- 	end,
		-- 	desc = "Find Config File",
		-- },
		{
			"<leader>f",
			function()
				Snacks.picker.files()
			end,
			desc = "Open file picker at current working directory",
		},
		-- {
		-- 	"<leader>fg",
		-- 	function()
		-- 		Snacks.picker.git_files()
		-- 	end,
		-- 	desc = "Find Git Files",
		-- },
		-- TODO
		-- {
		-- 	"<leader>fp",
		-- 	function()
		-- 		Snacks.picker.projects()
		-- 	end,
		-- 	desc = "Projects",
		-- },
		{
			"<leader>R",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},
		-- git
		-- {
		-- 	"<leader>gb",
		-- 	function()
		-- 		Snacks.picker.git_branches()
		-- 	end,
		-- 	desc = "Git Branches",
		-- },
		-- {
		-- 	"<leader>gl",
		-- 	function()
		-- 		Snacks.picker.git_log()
		-- 	end,
		-- 	desc = "Git Log",
		-- },
		-- {
		-- 	"<leader>gL",
		-- 	function()
		-- 		Snacks.picker.git_log_line()
		-- 	end,
		-- 	desc = "Git Log Line",
		-- },
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
		-- {
		-- 	"<leader>gS",
		-- 	function()
		-- 		Snacks.picker.git_stash()
		-- 	end,
		-- 	desc = "Git Stash",
		-- },
		-- {
		-- 	"<leader>gd",
		-- 	function()
		-- 		Snacks.picker.git_diff()
		-- 	end,
		-- 	desc = "Git Diff (Hunks)",
		-- },
		-- {
		-- 	"<leader>gf",
		-- 	function()
		-- 		Snacks.picker.git_log_file()
		-- 	end,
		-- 	desc = "Git Log File",
		-- },
		-- Grep
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
		-- {
		-- 	"<leader>s/",
		-- 	function()
		-- 		Snacks.picker.search_history()
		-- 	end,
		-- 	desc = "Search History",
		-- },
		-- {
		-- 	"<leader>sa",
		-- 	function()
		-- 		Snacks.picker.autocmds()
		-- 	end,
		-- 	desc = "Autocmds",
		-- },
		{
			"<leader>l",
			function()
				Snacks.picker.lines()
			end,
			desc = "Buffer Lines",
		},
		-- {
		-- 	"<leader>sc",
		-- 	function()
		-- 		Snacks.picker.command_history()
		-- 	end,
		-- 	desc = "Command History",
		-- },
		-- TODO maybe remove
		{
			"<leader>:",
			function()
				Snacks.picker.commands({
					confirm = "cmd",
				})
			end,
			desc = "Commands",
		},
		{
			"<leader>D",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"<leader>d",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "Buffer Diagnostics",
		},
		{
			"<leader>H",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Pages",
		},
		-- {
		-- 	"<leader>sH",
		-- 	function()
		-- 		Snacks.picker.highlights()
		-- 	end,
		-- 	desc = "Highlights",
		-- },
		-- {
		-- 	"<leader>si",
		-- 	function()
		-- 		Snacks.picker.icons()
		-- 	end,
		-- 	desc = "Icons",
		-- },
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
		{
			"<leader>m",
			function()
				Snacks.picker.marks()
			end,
			desc = "Marks",
		},
		-- {
		-- 	"<leader>sM",
		-- 	function()
		-- 		Snacks.picker.man()
		-- 	end,
		-- 	desc = "Man Pages",
		-- },
		-- {
		-- 	"<leader>sp",
		-- 	function()
		-- 		Snacks.picker.lazy()
		-- 	end,
		-- 	desc = "Search for Plugin Spec",
		-- },
		-- {
		-- 	"<leader>sq",
		-- 	function()
		-- 		Snacks.picker.qflist()
		-- 	end,
		-- 	desc = "Quickfix List",
		-- },
		{
			"<leader>'",
			function()
				Snacks.picker.resume()
			end,
			desc = "Resume",
		},
		-- {
		-- 	"<leader>su",
		-- 	function()
		-- 		Snacks.picker.undo()
		-- 	end,
		-- 	desc = "Undo History",
		-- },
		-- {
		-- 	"<leader>uC",
		-- 	function()
		-- 		Snacks.picker.colorschemes()
		-- 	end,
		-- 	desc = "Colorschemes",
		-- },
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
