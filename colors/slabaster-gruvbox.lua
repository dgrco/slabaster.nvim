local p = {
  bg          = "#1d2021",
  bg_alt      = "#3c3836",
  bg_float    = "#3c3836",
  bg_cursor   = "#3c3836",
  bg_select   = "#665c54",
  bg_visual   = "#665c54",
  border      = "#665c54",
  fg          = "#ebdbb2",
  fg_dim      = "#a89984",
  fg_faint    = "#7c6f64",
  cursor      = "#ebdbb2",

  comment     = "#529146",
  string      = "#b8bb26",
  number      = "#d3869b",
  keyword     = "#fb4934",
  type        = "#fabd2f",
  builtin     = "#fabd2f",
  definition  = "#b8bb26",
  heading     = "#fabd2f",
  macro       = "#ebdbb2",
  matchparen  = "#fabd2f",
  import      = "#8ec07c",

  red         = "#fb4934",
  green       = "#b8bb26",
  yellow      = "#fabd2f",
  blue        = "#83a598",
  cyan        = "#83a598",
  gray        = "#928374",
}

require("slabaster.theme").load("slabaster-gruvbox", p)
