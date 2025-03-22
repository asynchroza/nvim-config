return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
	require("oil").setup({
   		default_file_explorer = true,
		delete_to_trash = true,
		prompt_save_on_select_new_entry = true,
		lsp_file_methods = {
			enabled = true,
			timeout_ts = 1000,
			autosave_changes = false
		}
  	})
	
	local desc = "Open Oil in current directory and navigates to parent directory if used inside Oil"
	vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = desc })
	vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = desc })
  end
}
