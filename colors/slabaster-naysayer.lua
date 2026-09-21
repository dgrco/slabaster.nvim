local p = {
  bg          = "#072727",
  bg_alt      = "#0b3335",
  bg_float    = "#0e393b",
  bg_cursor   = "#0b3335",
  bg_select   = "#1a5053",
  bg_visual   = "#1a5053",
  border      = "#126367",
  fg          = "#d1b897",
  fg_dim      = "#9d8b72",
  fg_faint    = "#1e4c4e",
  cursor      = "#8cde94",

  comment     = "#44b340",
  string      = "#2ec09c",
  number      = "#7ad0c6",
  keyword     = "#ffffff",
  type        = "#8cde94",
  builtin     = "#7ad0c6",
  definition  = "#d1b897",
  macro       = "#8cde94",
  import      = "#8cde94",
  heading     = "#ffffff",
  operator    = "#d1b897",
  bracket     = "#8cde94",
  delimiter   = "#8cde94",
  matchparen  = "#1a5053",

  red         = "#e05252",
  green       = "#44b340",
}

require("slabaster.theme").load("slabaster-naysayer", p)
