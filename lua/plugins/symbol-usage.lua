-- use this or lsp-lens.lua
local SymbolKind = vim.lsp.protocol.SymbolKind

return {
	"Wansmer/symbol-usage.nvim",
	event = "BufReadPre", -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
	config = function()
		local langs = require("symbol-usage.langs")

		require("symbol-usage").setup({
			-- references = { enabled = true, include_declaration = false },
			definition = { enabled = true },
			implementation = { enabled = true },
			kinds = {
				SymbolKind.Function,
				SymbolKind.Method,
				SymbolKind.Struct,
				SymbolKind.Interface,
			},
			filetypes = {
				go = {
					kinds_filter = {
						[SymbolKind.Method] = {
							function(data)
								-- it's needed to avoid showing usages of methods in interfaces
								if string.find(data.symbol.name, "%)%.") then
									return true
								end
							end,
						},
					},
				},
				lua = langs.lua,
				javascript = langs.javascript,
				typescript = langs.javascript,
				typescriptreact = langs.javascript,
				javascriptreact = langs.javascript,
				vue = langs.javascript,
			},
		})
	end,
}
