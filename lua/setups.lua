require("nvim-rooter").setup({})

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
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	disable_netrw = true,
	hijack_netrw = true,
	respect_buf_cwd = true,
	sync_root_with_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	view = {
		relativenumber = true,
		width = 40,
	},
	log = {
		enable = true,
		truncate = true,
		types = {
			diagnostics = true,
		},
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
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		markdown = {
			require("formatter.filetypes.markdown").prettier,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

local lua_actions = require("fzf-lua.actions")

-- fzf ---
require("fzf-lua").setup({})

--- autopairs ---
require("nvim-autopairs").setup({})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

--- https://www.reddit.com/r/neovim/comments/101nga4/comment/j2xxpng/?utm_source=share&utm_medium=web2x&context=3 ---
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "path" },
		-- { name = "copilot" }, --
	},
	window = {
		documentation = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
		}),
	},
})

require("trouble").setup({
	multiline = true,
	indent_lines = true,
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

require("copilot").setup({
	panel = {
		enabled = true,
		auto_refresh = false,
		keymap = {
			jump_prev = "[[",
			jump_next = "]]",
			accept = "<CR>",
			refresh = "gr",
			open = "<M-CR>",
		},
		layout = {
			position = "bottom", -- | top | left | right
			ratio = 0.4,
		},
	},
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<S-Enter>",
			accept_word = false,
			accept_line = false,
			next = "<S-]>",
			prev = "<S-[>",
			dismiss = "<S-BS>",
		},
	},
	filetypes = {
		yaml = false,
		help = false,
		gitcommit = false,
		gitrebase = false,
		hgcommit = false,
		svn = false,
		cvs = false,
		["."] = false,
	},
	copilot_node_command = "node", -- Node.js version must be > 18.x
	server_opts_overrides = {},
})

require("lsp-colors").setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#10B981",
})

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {
				"NvimTree",
			},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "branch" },
		lualine_b = { "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = { "branch" },
		lualine_b = { "diff" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

require("Comment").setup({
	toggler = {
		line = "<D-/>",
	},
	opleader = {
		line = "<D-/>",
	},
})

require("guess-indent").setup({})

require("luasnip").setup({})

require("luasnip.loaders.from_vscode").lazy_load({
	include = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
		"lua",
		"html",
		"python",
		"go",
	},
})
