local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("set")
require("setups")

--- format on save ---
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

local fzflua = require("fzf-lua")

autocmd("LspAttach", {
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gd", function()
			--- go to definitions ---
			fzflua.lsp_definitions()
		end, opts)

		vim.keymap.set("n", "gr", function()
			--- go to references ---
			fzflua.lsp_references()
		end, opts)

		vim.keymap.set("n", "K", function()
			--- display info ---
			vim.lsp.buf.hover()
		end, opts)

		vim.keymap.set("n", "<leader>wss", function()
			fzflua.lsp_workspace_symbols()
		end, opts)

		vim.keymap.set("n", "<leader>ca", function()
			fzflua.lsp_code_actions()
		end, opts)

		vim.keymap.set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end, opts)
	end,
})

--- it seems there's a pluggin which overrides the custom theme behaviour ---
require("theme")
