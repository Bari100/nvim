-- bufdelete ----------------------------------------------------
vim.api.nvim_create_user_command("Bc", Snacks.bufdelete.delete, { nargs = 0 })

vim.api.nvim_create_user_command("Bca", Snacks.bufdelete.all, { nargs = 0 })

vim.api.nvim_create_user_command("Bco", Snacks.bufdelete.other, { nargs = 0 })

-- lazygit ----------------------------------------------------
vim.api.nvim_create_user_command("Lz", Snacks.lazygit, { nargs = 0 })

vim.api.nvim_create_user_command("Zl", Snacks.lazygit, { nargs = 0 })

-- picker ----------------------------------------------------
vim.api.nvim_create_user_command("Projects", Snacks.picker.projects, { nargs = 0 })

vim.api.nvim_create_user_command("Recent", Snacks.picker.recent, { nargs = 0 })
