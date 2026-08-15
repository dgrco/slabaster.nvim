-- A more austere sibling of slabaster: same warm alabaster body text and
-- background family, but the syntax palette is pared down to a handful of
-- muted accents. Keywords carry no hue of their own — they're bold, in a
-- brighter alabaster white, so structure reads through weight rather than
-- color.

local p = {
  bg          = "#0E1415",
  bg_alt      = "#141B1C",
  bg_float    = "#192223",
  bg_cursor   = "#161D1E",
  bg_select   = "#26332F",
  bg_visual   = "#26332F",
  border      = "#3A413D",
  fg          = "#DBCBA6",
  fg_dim      = "#8A8272",
  fg_faint    = "#5A6362",
  cursor      = "#DBCBA6",

  comment     = "#6E7568",
  string      = "#A3B08C",
  number      = "#C9AD82",
  keyword     = "#F5F0E2",
  bold_keywords = true,
  -- Type and builtin share one muted accent; the palette stays minimal
  -- rather than giving every syntax category its own hue.
  type        = "#9FB4BC",
  builtin     = "#9FB4BC",
  -- Function/type definitions get brightness, not a new hue, so they read
  -- as slightly more prominent body text rather than another color family.
  definition  = "#EAE0C7",

  red         = "#BE7373",
  green       = "#A3B08C",
  yellow      = "#C9AD82",
  blue        = "#9FB4BC",
  cyan        = "#8FA6AE",
  gray        = "#5A6362",
}

require("slabaster.theme").load("slabaster-minima", p)
