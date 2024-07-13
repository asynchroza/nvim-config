return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 75,
                    keymap = {
                        accept = "<S-Cr>",
                        next = "<C-.>",
                        previous = "<C-,>",
                    },
                },
                panel = {
                    enabled = false,
                },
                filetypes = {
                    ["*"] = true,
                },
            })
        end,
    },
}
