return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	vim.keymap.set('n', '<leader>gg', function()
            builtin.grep_string({ search = "" })
        end)
        vim.keymap.set('n', '<leader>gr', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

        --[[
	-- Uncomment once you figure out what these do --
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) 
	]]--
    end
}

