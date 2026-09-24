local p = {
  bg          = "#0c0c0e",
  bg_alt      = "#141417",
  bg_float    = "#1c1c25",
  bg_cursor   = "#141417",
  bg_select   = "#2e2e38",
  bg_visual   = "#2e2e38",
  border      = "#3e3e4a",
  fg          = "#e4e4ec",
  fg_dim      = "#9a9aa6",
  fg_faint    = "#33333a",
  cursor      = "#b2b2be",

  comment     = "#7a7a89",
  string      = "#c06e73",
  number      = "#a493c0",
  keyword     = "#cebf7f",
  type        = "#91c9ab",
  builtin     = "#7fc0ca",
  definition  = "#69b4a8",
  macro       = "#a493c0",
  import      = "#99af88",
  heading     = "#cebf7f",
  operator    = "#e4e4ec",
  bracket     = "#e4e4ec",
  delimiter   = "#e4e4ec",
  matchparen  = "#33333a",

  red         = "#eb474d",
  green       = "#93c4ab",
}

require("slabaster.theme").load("slabaster-void", p)
