local p = {
  bg          = "#1a1a1a",
  bg_alt      = "#222222",
  bg_float    = "#222222",
  bg_cursor   = "#222222",
  bg_select   = "#333333",
  bg_visual   = "#4a2420",
  border      = "#333333",
  fg          = "#ecf0f1",
  fg_dim      = "#95a5a6",
  fg_faint    = "#555555",
  cursor      = "#ecf0f1",

  comment     = "#707070",
  string      = "#e8b030",
  number      = "#b07cd0",
  keyword     = "#e74c3c",
  type        = "#4aa3e8",
  builtin     = "#4aa3e8",
  definition  = "#2ecc71",
  import      = "#e74c3c",
  heading     = "#4aa3e8",
  operator    = "#95a5a6",
  matchparen  = "#444444",
  warn        = "#e67e22",

  red         = "#e74c3c",
  green       = "#2ecc71",

  terminal = {
    "#1a1a1a", "#e74c3c", "#2ecc71", "#f1c40f",
    "#3498db", "#6c71c4", "#1abc9c", "#bdc3c7",
    "#707070", "#ee6f63", "#58d68d", "#f4d03f",
    "#5dade2", "#8a8ed4", "#48c9b0", "#ecf0f1",
  },
}

require("slabaster.theme").load("slabaster-flat", p)
