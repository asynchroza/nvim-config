return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.6",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
        "debugloop/telescope-undo.nvim"
    },

    config = function()
        require("telescope").setup({
            defaults = {
                --- this puts the cursor at the top of the list ---
                sorting_strategy = "ascending",
            },
            extensions = {
--[[ 
                undo = {
                    use_delta = true,
                    saved_only = false,
                    layout_strategy = "vertical",
                    side_by_side = true,
                    layout_config = {
                        preview_height = 0.8,
                    }
                }, 
]]--
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

        -- Load undo extension --
        require("telescope").load_extension("undo")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>s", builtin.find_files, {
            desc = "Telescope: Find Files, Search for files in the current directory"
        })
        vim.keymap.set("n", "<leader>gt", builtin.help_tags, { desc = "Telescope: Help Tags" })
        vim.keymap.set("n", "<leader>f", builtin.live_grep, { desc = "Telescope: Live Grep. Search for stuff in files" })
        vim.keymap.set("n", "<leader>rr", function()
            builtin.grep_string({ shorten_path = true, word_match = "-w", only_sort_text = true, search = '' })
        end, { desc = "Telescope: Grep String, Search for string before showing telescope" })
        vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope: Show git branches" })
        vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Telescope: Show git commits" })
        vim.keymap.set("n", "<leader>gs", builtin.treesitter, { desc = "Telescope: Treesitter, Symbols" })
        vim.keymap.set("n", "<leader>k", builtin.keymaps, { desc = "Telescope: Keymaps, Shortcuts, Commands" })

        vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "Telescope: Undo Tree" })
    end,
}
