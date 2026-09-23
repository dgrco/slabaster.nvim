local p = {
  bg          = "#072727",
  bg_alt      = "#093434",
  bg_float    = "#062121",
  bg_cursor   = "#093434",
  bg_select   = "#1a5053",
  bg_visual   = "#1a5053",
  border      = "#126367",
  fg          = "#bcb5a2",
  fg_dim      = "#8d8878",
  fg_faint    = "#1e4c4e",
  fg_inactive = "#8d8878",
  cursor      = "#90ee90",

  -- Blow's config writes the comment face as "#3fdflf", which is not hex.
  comment     = "#3fdf1f",
  string      = "#0fdfaf",
  number      = "#7fffd4",
  boolean     = "#7fffd4",
  warn        = "#e6db74",
  keyword     = "#ebebeb",
  type        = "#98fb98",
  builtin     = "#90ee90",
  definition  = "#f2ead8",
  macro       = "#7fffd4",
  import      = "#90ee90",
  heading     = "#ffffff",
  operator    = "#bcb5a2",
  bracket     = "#bcb5a2",
  delimiter   = "#bcb5a2",
  matchparen  = "#1a5053",

  red         = "#e05252",
  green       = "#3fdf1f",
}

require("slabaster.theme").load("slabaster-naysayer", p)
