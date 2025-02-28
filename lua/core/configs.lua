-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- tab length
vim.opt["tabstop"] = 2
vim.opt["shiftwidth"] = 2

-- cursor
vim.opt.guicursor =
	"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- other
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.spelllang = { "en_us", "ru_ru" }
vim.opt.spell = true

vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes:1"
vim.opt.statuscolumn = "%l%s"
vim.opt.cursorline = true

-- NOTE: turn off letters W and E in the left of the screen
vim.diagnostic.config({
	signs = false,
})

-- NOTE: lsp folds - try it later
-- vim.o.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:"
-- vim.o.foldcolumn = "1"
-- vim.o.foldenable = true
-- vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"
-- vim.o.foldlevel = 99
-- vim.o.foldlevelstart = 99
-- vim.o.foldmethod = "expr"
