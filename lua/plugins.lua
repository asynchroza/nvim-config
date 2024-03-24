return {
	{
		"windwp/nvim-autopairs",
		dependencies = { "hrsh7th/nvim-cmp" },
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
	{
		"lewis6991/gitsigns.nvim",
	},
	{

		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},
	{ "notjedi/nvim-rooter.lua" },
	{ "hrsh7th/cmp-path" },
	{ "folke/lsp-colors.nvim" },
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		lazy = true,
		config = function()
			require("refactoring").setup()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	{
		"NMAC427/guess-indent.nvim",
	},
	{

		"rafamadriz/friendly-snippets",
	},
	{
		"xiyaowong/transparent.nvim",
	},
}
