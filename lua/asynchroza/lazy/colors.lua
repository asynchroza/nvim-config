return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        init = function()
            local kanagawa = require('kanagawa')
            kanagawa.setup({
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                }
            })
            kanagawa.load('dragon')
        end
    },
}
