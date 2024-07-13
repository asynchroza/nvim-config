return {
    {
        "jesseleite/nvim-noirbuddy",
        dependencies = {
            { 'tjdevries/colorbuddy.nvim' }
        },
        lazy = false,
        priority = 1000,
        init = function()
            require('noirbuddy').setup {
                --- preset = 'minimal', ---
                colors = {
                    primary = '#6EE2FF',
                }
                -- or slate, miami-nights --
            }
        end
    },
}
