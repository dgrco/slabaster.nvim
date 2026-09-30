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
  string         = "#95be60",
  number         = "#d3869b",
  keyword        = "#ea6962",
  type           = "#e9b949",
  builtin        = "#ec8a4a",
  default_library = "#ddd5c0",
  definition     = "#83a598",
  macro          = "#d3869b",
  import         = "#8bba7f",
  heading        = "#95be60",
  operator       = "#ec8a4a",
  bracket        = "#ec8a4a",
  delimiter      = "#ec8a4a",
  matchparen     = "#3d4250",
  warn           = "#dfaf87",

  red            = "#ea6962",
  green          = "#95be60",

  terminal = {
    "#2d313d", "#ea6962", "#95be60", "#e9b949",
    "#7da7c5", "#d3869b", "#7ab8ad", "#c9c1ad",
    "#81878f", "#f28379", "#b9da8e", "#f2cc6f",
    "#97bdd8", "#e0a2b3", "#9fd1c8", "#ddd5c0",
  },
}

require("slabaster.theme").load("slabaster-gruvbox", p)
