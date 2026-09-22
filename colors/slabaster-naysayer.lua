local p = {
  bg          = "#092a25",
  bg_alt      = "#0c3730",
  bg_float    = "#08241f",
  bg_cursor   = "#0c3730",
  bg_select   = "#1a5053",
  bg_visual   = "#1a5053",
  border      = "#126367",
  fg          = "#ccc7aa",
  fg_dim      = "#938f7a",
  fg_faint    = "#1e4c4e",
  cursor      = "#90ee90",

  -- Blow's config writes the comment face as "#3fdflf", which is not hex.
  comment     = "#3fdf1f",
  string      = "#0fdfaf",
  number      = "#7fffd4",
  boolean     = "#7fffd4",
  warn        = "#e6db74",
  keyword     = "#d4e5e9",
  type        = "#98fb98",
  builtin     = "#90ee90",
  definition  = "#f2ead8",
  macro       = "#7fffd4",
  import      = "#90ee90",
  heading     = "#ffffff",
  operator    = "#ccc7aa",
  bracket     = "#ccc7aa",
  delimiter   = "#ccc7aa",
  matchparen  = "#1a5053",

  red         = "#e05252",
  green       = "#3fdf1f",
}

require("slabaster.theme").load("slabaster-naysayer", p)
