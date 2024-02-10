local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "


require("lazy").setup("plugins")

--- color theme ---
vim.cmd.colorscheme "catppuccin"

vim.api.nvim_set_keymap('n', '<leader>ff', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


--- option + w to quickly circle around panes ---
vim.api.nvim_set_keymap('n', '∑', '<C-w>w', { noremap = true, silent = true })

local function tree_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
	end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '<C-p>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

local HEIGHT_RATIO = 0.8 --
local WIDTH_RATIO = 0.5  --

require("nvim-tree").setup {
  on_attach = tree_on_attach,
  disable_netrw = true,
  hijack_netrw = true,
  respect_buf_cwd = true,
  sync_root_with_cwd = true,
  view = {
    relativenumber = true,
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = "rounded",
          relative = "editor",
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
        end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
}

vim.keymap.set("n", "<leader>s",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<leader>g",
  "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })

vim.diagnostic.config({ virtual_text = { spacing = 0 }, update_in_insert = false, })
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"

vim.keymap.set("n", "<leader>h",
  "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set("n", "<leader>m",
  "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })

vim.keymap.set("n", "<leader>1",
  "1gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>2",
  "2gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>3",
  "3gt<CR>", { silent = true })
vim.keymap.set("n", "<leader>4",
  "4gt<CR>", { silent = true })

