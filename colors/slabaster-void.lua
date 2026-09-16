local p = {
  bg          = "#0c0c0e",
  bg_alt      = "#141417",
  bg_float    = "#17171b",
  bg_cursor   = "#141417",
  bg_select   = "#26262e",
  bg_visual   = "#26262e",
  border      = "#33333a",
  fg          = "#e4e4ec",
  fg_dim      = "#9a9aa6",
  fg_faint    = "#33333a",
  cursor      = "#e4e4ec",

  comment     = "#52525e",
  string      = "#93c4ab",
  number      = "#b8a3d9",
  keyword     = "#d99a9a",
  type        = "#d4b483",
  builtin     = "#7ec8d4",
  definition  = "#8fb3d9",
  macro       = "#b8a3d9",
  import      = "#aec996",
  heading     = "#d4b483",
  operator    = "#75757f",
  bracket     = "#75757f",
  matchparen  = "#33333a",

  red         = "#d99a9a",
  green       = "#93c4ab",
}

require("slabaster.theme").load("slabaster-void", p)
