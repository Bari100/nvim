return {
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')
			require('gitsigns').setup()
			lspconfig.lua_ls.setup{}
			lspconfig.ts_ls.setup{}
		end
	}
}
