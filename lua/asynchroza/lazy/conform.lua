--- formatter ---

return {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                javascript = { { "prettierd" } },
                typescript = { { "prettierd" } },
                javascriptreact = { { "prettierd" } },
                typescriptreact = { { "prettierd" } },
                lua = { "stylua" },
                markdown = { "prettier" },
            },
            format_on_save = {
                lsp_fallback = true,
            },
        })
    end,
}
