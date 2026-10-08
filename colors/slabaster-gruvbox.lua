local c = {
  bg0        = "#0e1018",
  bg1        = "#1c1f29",
  bg2        = "#2d313d",
  bg3        = "#3d4250",
  bg4        = "#62666f",
  fg0        = "#ebe4d2",
  fg1        = "#ddd5c0",
  fg2        = "#cbc4b0",
  fg3        = "#b7b09f",
  fg4        = "#a39c8c",
  gray       = "#81878f",

  red        = "#f05a4c",
  green      = "#b8bb26",
  yellow     = "#e9b949",
  blue       = "#83a598",
  purple     = "#d3869b",
  aqua       = "#8bba7f",
  orange     = "#ec8a4a",

  diff_red   = "#442d30",
  diff_green = "#2a4333",
  diff_aqua  = "#333841",
  diff_blue  = "#213352",
}

local p = {
  bg             = c.bg0,
  bg_alt         = "#161922",
  bg_float       = c.bg1,
  bg_cursor      = "#141720",
  bg_select      = c.bg2,
  bg_visual      = c.bg2,
  border         = c.bg3,
  fg             = c.fg1,
  fg_dim         = c.fg4,
  fg_faint       = c.bg4,
  cursor         = c.fg1,
  cursor_nr      = c.yellow,

  comment        = c.gray,
  string         = c.green,
  number         = c.purple,
  keyword        = c.red,
  type           = c.yellow,
  builtin        = c.orange,
  definition     = c.aqua,
  macro          = c.purple,
  import         = c.aqua,
  heading        = c.green,
  operator       = c.fg4,
  bracket        = c.fg4,
  delimiter      = c.fg4,
  matchparen     = c.orange,
  warn           = "#dfaf87",

  red            = c.red,
  green          = c.green,

  terminal = {
    "#2d313d", "#f05a4c", "#b8bb26", "#e9b949",
    "#7da7c5", "#d3869b", "#7ab8ad", "#c9c1ad",
    "#81878f", "#f5796c", "#cacd5d", "#f2cc6f",
    "#97bdd8", "#e0a2b3", "#9fd1c8", "#ddd5c0",
  },

  groups = require("slabaster.groups.gruvbox")(c),
}

require("slabaster.theme").load("slabaster-gruvbox", p)
