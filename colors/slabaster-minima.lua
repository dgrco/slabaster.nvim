local p = {
  bg          = "#0e1415",
  bg_alt      = "#162022",
  bg_float    = "#182325",
  bg_cursor   = "#182325",
  bg_select   = "#354c50",
  bg_visual   = "#293334",
  border      = "#2b3d40",
  fg          = "#cecece",
  fg_dim      = "#7d7d7d",
  fg_faint    = "#696969",
  cursor      = "#cecece",

  comment     = "#dfdf8e",
  string      = "#95cb82",
  number      = "#cc8bc9",
  keyword     = "#75C7BD",
  type        = "#cecece",
  builtin     = "#71aed7",
  definition  = "#71ade7",
  macro       = "#cecece",
  operator    = "#7d7d7d",

  red         = "#c33c33",
  green       = "#95cb82",
  yellow      = "#cd974b",
  blue        = "#71aed7",
  cyan        = "#47bea9",
  gray        = "#7d7d7d",
}

require("slabaster.theme").load("slabaster-minima", p)
