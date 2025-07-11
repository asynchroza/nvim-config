local MINIMAL_COLORS = {
  background = '#121212',
  primary = '#ff0088',
  secondary = '#d5d5d5',
  noir_0 = '#ffffff',
  noir_1 = '#f5f5f5',
  noir_2 = '#d5d5d5',
  noir_3 = '#b4b4b4',
  noir_4 = '#a7a7a7',
  noir_5 = '#949494',
  noir_6 = '#737373',
  noir_7 = '#535353',
  noir_8 = '#323232',
  noir_9 = '#212121',
  diagnostic_error = '#ff0038',
  diagnostic_warning = '#ff7700',
  diagnostic_info = '#47eae0',
  diagnostic_hint = '#47eae0',
  diff_add = '#00ff77',
  diff_change = '#47eae0',
  diff_delete = '#ff0038',
}

return {
  'jesseleite/nvim-noirbuddy',
  dependencies = {
    { 'tjdevries/colorbuddy.nvim' }
  },
  lazy = false,
  priority = 1000,
  config = function ()
    local noirbuddy = require("noirbuddy")
    local colors = require('colorbuddy').colors

    local g = require("colorbuddy.group").Group
    local c = require("colorbuddy.color").Color

    noirbuddy.setup({colors = MINIMAL_COLORS})

    local green = c.new("green", "#99cc99")
    g.new("string", green)

    c.new("background", "#222222")
    g.new("LineNr", colors.secondary, colors.background)
  end
}

