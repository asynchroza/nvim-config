--- file explorer ---
local function tree_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set("n", "<C-p>", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

require("nvim-tree").setup({
	on_attach = tree_on_attach,
	disable_netrw = true,
	hijack_netrw = true,
	respect_buf_cwd = true,
	sync_root_with_cwd = true,
	view = {
		relativenumber = true,
	},
})

-- formatting ---
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

--- fzf lua ---
local actions = require("fzf-lua.actions")

require("fzf-lua").setup({
	actions = {
		files = {
			["ctrl-t"] = actions.file_edit_or_qf,
			["ctrl-s"] = actions.file_split,
			["ctrl-v"] = actions.file_vsplit,
			["default"] = actions.file_tabedit,
			["alt-q"] = actions.file_sel_to_qf,
			["alt-l"] = actions.file_sel_to_ll,
		},
	},
})

--- color theme ---
--[[
require("catppuccin").setup({
	term_colors = true,
	--- transparent_background = true, ---
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
	--
	integrations = {
		telescope = {
			enabled = true,
			style = "nvchad",
		},
	},
})
]]
--

--- autopairs ---
require("nvim-autopairs").setup({})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("trouble").setup({
	icons = true,
})

require("gitsigns").setup({
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol",
		delay = 5000,
	},
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

		local function map(mode, l, r, opts)
			opts = opts or {}
			opts.buffer = bufnr
			vim.keymap.set(mode, l, r, opts)
		end

		map("n", "<leader>mp", gs.preview_hunk)
		map("n", "<leader>mb", function()
			gs.blame_line({ full = true })
		end)
		map("n", "<leader>mdf", gs.diffthis)
		map("n", "<leader>mdr", gs.toggle_deleted)
	end,
})
