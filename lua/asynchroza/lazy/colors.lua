return {
	{
		"projekt0n/github-nvim-theme",
		priority = 1000,
		config = function()
			require("github-theme").setup({
				options = {
					transparent = false,
				},
			})
		end,
		init = function()
			vim.cmd("colorscheme github_dark")
		end,
	},
}
