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
  string      = "#ac7376",
  number      = "#9d8eb6",
  keyword     = "#b4b489",
  type        = "#91b9a3",
  builtin     = "#87adb2",
  definition  = "#6da199",
  macro       = "#9d8eb6",
  import      = "#92a682",
  heading     = "#b4b489",
  operator    = "#e4e4ec",
  bracket     = "#e4e4ec",
  delimiter   = "#e4e4ec",
  matchparen  = "#33333a",

  red         = "#eb474d",
  green       = "#93c4ab",
}

require("slabaster.theme").load("slabaster-void", p)
