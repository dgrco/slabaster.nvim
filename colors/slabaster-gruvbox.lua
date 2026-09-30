local p = {
  bg             = "#0e1018",
  bg_alt         = "#161922",
  bg_float       = "#1c1f29",
  bg_cursor      = "#141720",
  bg_select      = "#2d313d",
  bg_visual      = "#2d313d",
  border         = "#3d4250",
  fg             = "#ddd5c0",
  fg_dim         = "#a39c8c",
  fg_faint       = "#62666f",
  cursor         = "#ddd5c0",
  cursor_nr      = "#e9b949",

  comment        = "#81878f",
  string         = "#a7c080",
  number         = "#d3869b",
  keyword        = "#ea6962",
  type           = "#e9b949",
  builtin        = "#ec8a4a",
  definition     = "#83a598",
  macro          = "#d3869b",
  heading        = "#a7c080",
  operator       = "#a39c8c",
  bracket        = "#ec8a4a",
  matchparen     = "#3d4250",
  warn           = "#dfaf87",

  red            = "#ea6962",
  green          = "#a7c080",
}

require("slabaster.theme").load("slabaster-gruvbox", p)
