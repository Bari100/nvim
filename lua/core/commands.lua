-- bufdelete ----------------------------------------------------
vim.api.nvim_create_user_command("Bc", function()
	Snacks.bufdelete.delete({ wipe = true })
end, { nargs = 0 })

vim.api.nvim_create_user_command("Bca", function()
	Snacks.bufdelete.all({ wipe = true })
end, { nargs = 0 })

vim.api.nvim_create_user_command("Bco", function()
	Snacks.bufdelete.other({ wipe = true })
end, { nargs = 0 })

-- lazygit ----------------------------------------------------
vim.api.nvim_create_user_command("Lz", function()
	Snacks.lazygit()
end, { nargs = 0 })

vim.api.nvim_create_user_command("Zl", function()
	Snacks.lazygit()
end, { nargs = 0 })

-- trouble ----------------------------------------------------
vim.api.nvim_create_autocmd("BufRead", {
	callback = function(ev)
		if vim.bo[ev.buf].buftype == "quickfix" then
			vim.schedule(function()
				vim.cmd([[cclose]])
				vim.cmd([[Trouble qflist open]])
			end)
		end
	end,
})
