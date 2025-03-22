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
		},
  		keymaps = {
			["<leader>e"] = { "actions.open_cwd", mode = "n" }
  		}
  	})

	vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil in parent directory" })
	vim.keymap.set("n", "_", "<CMD>Oil<CR>", { desc = "Open Oil in current directory" })
  end
}
