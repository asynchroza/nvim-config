vim.g.mapleader = " "

--- option + w to quickly circle around panes ---
vim.api.nvim_set_keymap("n", "∑", "<C-w>w", { noremap = true, silent = true })
