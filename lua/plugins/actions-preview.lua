local keymap_set = require("utils.keymap-utils").keymap_set

return {
	"aznhe21/actions-preview.nvim",
	config = function()
		keymap_set({ "v", "n" }, "ga", require("actions-preview").code_actions)
	end,
}
