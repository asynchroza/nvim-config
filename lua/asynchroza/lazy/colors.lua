return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        init = function()
            local kanagawa = require('kanagawa')
            kanagawa.setup {}
            kanagawa.load('dragon')
        end
    },
}
