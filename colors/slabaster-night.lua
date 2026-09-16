local p = {
  bg          = "#1a1b26",
  bg_alt      = "#1f2030",
  bg_float    = "#22243a",
  bg_cursor   = "#1f2030",
  bg_select   = "#2d3050",
  bg_visual   = "#2d3050",
  border      = "#3b3d57",
  fg          = "#e0def4",
  fg_dim      = "#9a97b8",
  fg_faint    = "#3b3d57",
  cursor      = "#e0def4",

  comment     = "#565f89",
  string      = "#93c9a8",
  number      = "#c9a8e0",
  keyword     = "#e8a2a8",
  type        = "#e0c08a",
  builtin     = "#7dcfff",
  definition  = "#8ab8e0",
  macro       = "#c9a8e0",
  import      = "#e0c08a",
  heading     = "#e0c08a",
  operator    = "#6b7394",
  bracket     = "#6b7394",
  matchparen  = "#3b3d57",

  red         = "#e8a2a8",
  green       = "#93c9a8",
}

require("slabaster.theme").load("slabaster-night", p)
