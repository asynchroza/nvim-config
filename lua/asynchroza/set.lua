--- COPYING INTO CLIPBOARD ---
vim.api.nvim_set_option("mouse", "a")
vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.api.nvim_set_option("mousemodel", "extend")

--- DEFAULTS ---
vim.diagnostic.config({ virtual_text = { spacing = 0 }, update_in_insert = false }) --- stops diagnostics from moving text around
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"
