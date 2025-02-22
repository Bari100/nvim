-- bufdelete ----------------------------------------------------
vim.api.nvim_create_user_command("Bc", function()
	Snacks.bufdelete.delete()
end, { nargs = 0 })

vim.api.nvim_create_user_command("Bca", function()
	Snacks.bufdelete.all()
end, { nargs = 0 })

vim.api.nvim_create_user_command("Bco", function()
	Snacks.bufdelete.other()
end, { nargs = 0 })

-- lazygit ----------------------------------------------------
vim.api.nvim_create_user_command("Lz", function()
	Snacks.lazygit()
end, { nargs = 0 })
