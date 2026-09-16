local p = {
  bg          = "#221f1d",
  bg_alt      = "#2a2623",
  bg_float    = "#2a2623",
  bg_cursor   = "#282421",
  bg_select   = "#3c3836",
  bg_visual   = "#3c3836",
  border      = "#504945",
  fg          = "#e8e3d8",
  fg_dim      = "#a89984",
  fg_faint    = "#4f4b42",
  cursor      = "#e8e3d8",

  comment     = "#6b6558",
  string      = "#a9b665",
  number      = "#d3869b",
  keyword     = "#ea6962",
  type        = "#d8a657",
  builtin     = "#89b482",
  definition  = "#7daea3",
  macro       = "#d3869b",
  import      = "#d8a657",
  heading     = "#d8a657",
  operator    = "#8a8374",
  bracket     = "#8a8374",
  matchparen  = "#504945",

  red         = "#ea6962",
  green       = "#a9b665",
}

require("slabaster.theme").load("slabaster-gruvbox", p)
