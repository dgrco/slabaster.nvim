local p = {
  bg          = "#072626",
  bg_alt      = "#0b3335",
  bg_float    = "#0e393b",
  bg_cursor   = "#0b3335",
  bg_select   = "#1a5053",
  bg_visual   = "#1a5053",
  border      = "#126367",
  fg          = "#d3b58d",
  fg_dim      = "#9c8568",
  fg_faint    = "#1e4c4e",
  cursor      = "#90ee90",

  -- Blow's config writes the comment face as "#3fdflf", which is not hex.
  comment     = "#3fdf1f",
  string      = "#0fdfaf",
  number      = "#d3b58d",
  boolean     = "#7fffd4",
  warn        = "#e6db74",
  keyword     = "#ffffff",
  type        = "#98fb98",
  builtin     = "#90ee90",
  definition  = "#f2ead8",
  macro       = "#d3b58d",
  import      = "#90ee90",
  heading     = "#ffffff",
  operator    = "#d3b58d",
  bracket     = "#d3b58d",
  delimiter   = "#d3b58d",
  matchparen  = "#1a5053",

  red         = "#e05252",
  green       = "#3fdf1f",
}

require("slabaster.theme").load("slabaster-naysayer", p)
