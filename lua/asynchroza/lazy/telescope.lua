return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.6",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			defaults = {
				--- this puts the cursor at the top of the list ---
				sorting_strategy = "ascending",
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>s", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gt", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>gg", function()
			builtin.grep_string({ search = "" })
		end)
		vim.keymap.set("n", "<leader>rr", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>gb", function()
			builtin.git_branches()
		end)
		vim.keymap.set("n", "<leader>gc", function()
			builtin.git_commits()
		end)
		vim.keymap.set("n", "<leader>gs", function()
			builtin.treesitter()
		end)
	end,
}
