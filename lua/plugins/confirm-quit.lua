local M = {}

local options = {
	overwrite_q_command = true,
	quit_message = "Do you want to quit?",
}

local GENERIC_ERROR_MESSAGE = "ConfirmQuit: Error while quitting"

local function is_any_buffer_modified()
	local buffers = vim.api.nvim_list_bufs()

	for _, buf in ipairs(buffers) do
		local is_modified = vim.api.nvim_get_option_value("modified", { buf = buf })

		if is_modified then
			return true
		end
	end

	return false
end

local function prompt_user_to_quit()
	return vim.fn.confirm(options.quit_message, "&Yes\n&No", 2, "Question") == 1
end

--- A wrapper for pcall that just prints an error in case of failure
local function pcall_panic(func, ...)
	local ok, error = pcall(func, ...)
	if not ok then
		vim.notify(error or GENERIC_ERROR_MESSAGE, vim.log.levels.ERROR)
	end
end

local function quitall()
	pcall_panic(vim.cmd.quitall, { bang = false, mods = { silent = true } })
end

function M.confirm_quit_all()
	local should_quit = (is_any_buffer_modified() and not vim.o.confirm) -- or: Unsaved changes. Try quit to print error
		or prompt_user_to_quit() -- or: Prompt to quit

	if should_quit then
		quitall()
	end
end

local function setup_autocmds()
	local command_opts = { force = true, bang = true }

	vim.api.nvim_create_user_command("ConfirmQuit", function()
		M.confirm_quit_all()
	end, command_opts)
end

function M.setup()
	setup_autocmds()
end

M.setup()
return {}
