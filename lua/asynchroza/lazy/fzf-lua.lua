return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- fzf has a flag for case insensitive searching if smart case continues to behave poorly
  opts = {},
  config = function()
  	vim.keymap.set("n", "<leader>p", "<CMD>FzfLua marks<CR>")
  end
}
