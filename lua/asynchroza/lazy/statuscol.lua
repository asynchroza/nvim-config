return {
  "luukvbaal/statuscol.nvim", config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      ft_ignore = { "oil" },
      relculright = true,
      clickhandlers = {
        gitsigns = builtin.gitsigns_click,
      },
      segments = {
        {
          sign = {
            namespace = { "gitsigns.*" },
            name = { "gitsigns.*" },
            colwidth = 1,
            maxwidth = 1
          },
        },
        {
          sign = {
            namespace = { ".*" },
            name = { ".*" },
            colwidth = 1,
            maxwidth = 1
          },
        },
        { text = { builtin.lnumfunc }, colwidth = 2, click = "v:lua.ScLa", },
        { text = { " " } }
      }
    })
  end,
}
