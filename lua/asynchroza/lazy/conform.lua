--- formatter ---

return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { { "eslint_d", "prettier" } },
				lua = { "stylua" },
				markdown = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		})
	end,
}
