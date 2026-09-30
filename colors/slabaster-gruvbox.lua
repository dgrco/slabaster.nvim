local p = {
  bg             = "#0e1018",
  bg_alt         = "#161922",
  bg_float       = "#1c1f29",
  bg_cursor      = "#141720",
  bg_select      = "#3c3836",
  bg_visual      = "#3c3836",
  border         = "#504945",
  fg             = "#ebdbb2",
  fg_dim         = "#a89984",
  fg_faint       = "#665c54",
  cursor         = "#ebdbb2",
  cursor_nr      = "#fabd2f",

  comment        = "#81878f",
  string         = "#b8bb26",
  number         = "#d3869b",
  keyword        = "#fb4934",
  type           = "#fabd2f",
  builtin        = "#fe8019",
  definition     = "#8ec07c",
  macro          = "#d3869b",
  import         = "#83a598",
  heading        = "#b8bb26",
  operator       = "#a89984",
  bracket        = "#fe8019",
  matchparen     = "#504945",
  warn           = "#dfaf87",

  red            = "#fb4934",
  green          = "#b8bb26",
}

require("slabaster.theme").load("slabaster-gruvbox", p)
