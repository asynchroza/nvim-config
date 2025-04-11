local OXIDE = {
  background = "#070e11",
  primary = "#00d992",
  secondary = "#E9F5E9",
  noir_0 = "#ffffff",
  noir_1 = "#f5f5f5",
  noir_2 = "#d5d5d5",
  noir_3 = "#b4b4b4",
  noir_4 = "#a7a7a7",
  noir_5 = "#949494",
  noir_6 = "#737373",
  noir_7 = "#3A4649",
  noir_8 = "#1D2526",
  noir_9 = "#10181B",
  diagnostic_error = "#fa5e86",
  diagnostic_warning = "#ffb717",
  diagnostic_info = "#00d992",
  diagnostic_hint = "#00d992",
  diff_add = "#00d992",
  diff_change = "#90a7f8",
  diff_delete = "#fa5e86",
}

return {
  'jesseleite/nvim-noirbuddy',
  dependencies = {
    { 'tjdevries/colorbuddy.nvim' }
  },
  lazy = false,
  priority = 1000,
  opts = {
    colors = OXIDE
  },
}

