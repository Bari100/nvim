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
