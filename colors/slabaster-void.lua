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
  cursor      = "#e4e4ec",

  comment     = "#7a7a89",
  string      = "#93c4ab",
  number      = "#b8a3d9",
  keyword     = "#d9757a",
  type        = "#d4b483",
  builtin     = "#7ec8d4",
  definition  = "#8fb3d9",
  macro       = "#b8a3d9",
  import      = "#aec996",
  heading     = "#d4b483",
  operator    = "#75757f",
  bracket     = "#75757f",
  matchparen  = "#33333a",

  red         = "#d9757a",
  green       = "#93c4ab",
}

require("slabaster.theme").load("slabaster-void", p)
