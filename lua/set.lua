--- color theme ---
vim.cmd.colorscheme("github_dark")

--- nvim tree ---
vim.api.nvim_set_keymap("n", "<leader>ff", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--- option + w to quickly circle around panes ---
vim.api.nvim_set_keymap("n", "∑", "<C-w>w", { noremap = true, silent = true })

--- fuzzy finder & live grep ---
vim.keymap.set("n", "<leader>s", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", "<leader>g", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
vim.keymap.set("n", "<leader>r", "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })

--- tabs ---
vim.keymap.set("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })

vim.keymap.set("n", "<leader>1", "1gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>2", "2gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>3", "3gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>4", "4gt<CR>", { silent = true })

--- trouble ---
vim.keymap.set("n", "<leader>tt", function()
	require("trouble").toggle()
end)
vim.keymap.set("n", "[t", function()
	require("trouble").next({ skip_groups = true, jump = true })
end)
vim.keymap.set("n", "]t", function()
	require("trouble").previous({ skip_groups = true, jump = true })
end)

--- VIM DEFAULTS ---
vim.diagnostic.config({ virtual_text = { spacing = 0 }, update_in_insert = false })
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"

--- REFACTORING ---
vim.keymap.set({ "n", "x" }, "<leader>rr", function()
	require("refactoring").select_refactor()
end)
