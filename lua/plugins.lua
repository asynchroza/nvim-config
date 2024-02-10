return {
	{
	  "windwp/nvim-autopairs",
	  dependencies = { 'hrsh7th/nvim-cmp' },
	  config = function()
	    require("nvim-autopairs").setup {}
	    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	    local cmp = require('cmp')
	    cmp.event:on(
	      'confirm_done',
	      cmp_autopairs.on_confirm_done()
	    )
	  end,
	}, 
	{ 
		"catppuccin/nvim", 
		name = "catppuccin", 
		priority = 1000, 
		config = function() 
			require('catppuccin').setup({
				term_colors = true,
				transparent_background = true,
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#000000",
						crust = "#000000",
					},
				},
				integrations = {
					telescope = {
						enabled = true,
						style = "nvchad",
					},
				},
			}) 
		end 
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
		build = 'yarn install --frozen-lockfile'
	},
	{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    local actions = require "fzf-lua.actions"

    require("fzf-lua").setup({
	actions = {
		files = {
			["ctrl-t"]     = actions.file_edit_or_qf,
			["ctrl-s"]      = actions.file_split,
			["ctrl-v"]      = actions.file_vsplit,
			["default"]      = actions.file_tabedit,
			["alt-q"]       = actions.file_sel_to_qf,
			["alt-l"]       = actions.file_sel_to_ll,
    		}
	 }
    })
  end
},
{
	"ThePrimeagen/harpoon"
},
{
	"nvim-lua/plenary.nvim"
}

}
