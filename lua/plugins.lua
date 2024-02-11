return {
	{
		"windwp/nvim-autopairs",
		dependencies = { "hrsh7th/nvim-cmp" },
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"prettier/vim-prettier",
		build = "yarn install --frozen-lockfile",
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"nvim-lua/plenary.nvim",
	},
	{
		"mhartington/formatter.nvim",
	},
	{
		"folke/trouble.nvim",
	},
	{
		"tpope/vim-fugitive",
	},
}
