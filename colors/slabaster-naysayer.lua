-- Same syntax palette as slabaster, but on Jonathan Blow's actual
-- Naysayer background (a near-black teal, not Alabaster's neutral dark)
-- and his real lightgreen cursor, both reconstructed from published
-- ports/screenshots of his Emacs config (see README for sourcing notes).

local p = {
  bg          = "#062329",
  bg_alt      = "#0C2A30",
  bg_float    = "#113137",
  bg_cursor   = "#0E2C32",
  bg_select   = "#144C4E",
  bg_visual   = "#144C4E",
  border      = "#2B4F53",
  fg          = "#DBCBA6",
  fg_dim      = "#8A8272",
  fg_faint    = "#5A6362",
  cursor      = "#90EE90",

  comment     = "#3D9A48",
  string      = "#3CA599",
  number      = "#75C7BD",
  keyword     = "#F0E6D2",
  type        = "#82CE8A",
  builtin     = "#75C7BD",
  definition  = "#5A8CC7",

  red         = "#C85D60",
  green       = "#87A85B",
  yellow      = "#CDAA66",
  blue        = "#5A8CC7",
  cyan        = "#519FAD",
  gray        = "#5A6362",
}

require("slabaster.theme").load("slabaster-naysayer", p)
