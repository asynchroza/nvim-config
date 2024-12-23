local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local DefaultGroup = augroup("DefaultGroup", {})

autocmd("LspAttach", {
	group = DefaultGroup,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)

		vim.keymap.set("n", "<leader>gr", function()
			vim.lsp.buf.references()
		end, opts)

		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)

		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, opts)

		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, opts)

		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, opts)

		--- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts) ---

		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)

		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
	end,
})
