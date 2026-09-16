local p = {
  bg          = "#1a1d20",
  bg_alt      = "#22262a",
  bg_float    = "#22262a",
  bg_cursor   = "#1f2226",
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
  type        = "#e8cf68",
  builtin     = "#89b482",
  definition  = "#8fc172",
  macro       = "#d3869b",
  import      = "#a9cfa8",
  heading     = "#e8cf68",
  operator    = "#8a8374",
  bracket     = "#8a8374",
  matchparen  = "#504945",

  red         = "#ea6962",
  green       = "#a9b665",
}

require("slabaster.theme").load("slabaster-gruvbox", p)
