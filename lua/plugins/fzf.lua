return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- local actions = require("fzf-lua.actions")
		require("fzf-lua").setup({
			winopts = {
				on_create = function()
					-- vim.keymap.set("t", "<Tab>", "<Enter>", { silent = true, buffer = true })
					vim.keymap.set("t", "<c-l>", "<Enter>", { silent = true, buffer = true })
				end,
				fullscreen = true,
			},
			buffers = {
				-- should find out where I found info about this option here;
				sort_last_used = true,
			},
			keymap = {
				builtin = {
					["<c-d>"] = "preview-down",
					["<c-u>"] = "preview-up",
					["<c-f>"] = "preview-page-down",
					["<c-b>"] = "preview-page-up",
				},
			},
		})
	end,
}
