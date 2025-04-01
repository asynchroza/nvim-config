return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- fzf has a flag for case insensitive searching if smart case continues to behave poorly
  opts = {},
  config = function()
  	vim.keymap.set("n", "<leader>fm", "<CMD>FzfLua marks<CR>")
  	vim.keymap.set("n", "<leader>fd", "<CMD>FzfLua live_grep<CR>")
  	vim.keymap.set("n", "<leader>fb", "<CMD>FzfLua git_blame<CR>")
  	vim.keymap.set("n", "<leader>ff", "<CMD>FzfLua files cwd<CR>")

	-- TODO: Explore what else you can use from fzf lua to replace native lsp implementations
	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function (ev)
			local opts = { buffer = ev.buf }

			---comment
			---@param mode string 
			---@param user_cmd string
			---@param vim_cmd string
			local set_keymap = function (mode, user_cmd, vim_cmd)
				vim.keymap.set(mode, user_cmd, vim_cmd, opts)
			end


			set_keymap("n", "gd", "<CMD>FzfLua lsp_definitions<CR>")
			set_keymap("n", "gr", "<CMD>FzfLua lsp_references<CR>")
			set_keymap("n", "ca", "<CMD>FzfLua lsp_code_actions<CR>")
		end
	})
  end
}
