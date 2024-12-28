return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.6",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim"
    },

    config = function()
        require("telescope").setup({
            defaults = {
                --- this puts the cursor at the top of the list ---
                sorting_strategy = "ascending",
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({
                        winblend = 10,
                        border = true,
                        previewer = false,
                        layout_config = {
                            width = 0.5,
                            height = 0.3,
                        },
                    }),
                }
            }
        })

        -- Load ui-select --
        require("telescope").load_extension("ui-select")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files, {
            desc = "Telescope: Find Files, Search for files in the current directory"
        })
        vim.keymap.set("n", "<leader>gt", builtin.help_tags, { desc = "Telescope: Help Tags" })
        vim.keymap.set("n", "<leader>s", builtin.live_grep, { desc = "Telescope: Live Grep. Search for stuff in files" })
        vim.keymap.set("n", "<leader>rr", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Telescope: Grep String, Search for string before showing telescope" })
        vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope: Show git branches" })
        vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Telescope: Show git commits" })
        vim.keymap.set("n", "<leader>gs", builtin.treesitter, { desc = "Telescope: Treesitter, Symbols" })
        vim.keymap.set("n", "<leader>k", builtin.keymaps, { desc = "Telescope: Keymaps, Shortcuts, Commands" })
    end,
}
