return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				lua = { "stylua" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		})
	end,
}
