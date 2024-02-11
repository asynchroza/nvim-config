vim.g.mapleader = " "

--- color theme ---
vim.cmd.colorscheme("catppuccin")

--- nvim tree ---
vim.api.nvim_set_keymap("n", "<leader>ff", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--- option + w to quickly circle around panes ---
vim.api.nvim_set_keymap("n", "∑", "<C-w>w", { noremap = true, silent = true })

--- fuzzy finder & live grep ---

vim.keymap.set("n", "<leader>s", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<leader>g", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })

vim.diagnostic.config({ virtual_text = { spacing = 0 }, update_in_insert = false })
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"

--- tabs ---
vim.keymap.set("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })

vim.keymap.set("n", "<leader>1", "1gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>2", "2gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>3", "3gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>4", "4gt<CR>", { silent = true })
