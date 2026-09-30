local c = {
  bg0        = "#0e1018",
  bg1        = "#3c3836",
  bg2        = "#504945",
  bg3        = "#665c54",
  bg4        = "#7c6f64",
  fg0        = "#fbf1c7",
  fg1        = "#ebdbb2",
  fg2        = "#d5c4a1",
  fg3        = "#bdae93",
  fg4        = "#a89984",
  gray       = "#928374",
  comment    = "#81878f",

  red        = "#fb4934",
  green      = "#b8bb26",
  yellow     = "#fabd2f",
  blue       = "#83a598",
  purple     = "#d3869b",
  aqua       = "#8ec07c",
  orange     = "#fe8019",
  tan        = "#dfaf87",

  diff_red   = "#442d30",
  diff_green = "#2a4333",
  diff_aqua  = "#333841",
  diff_blue  = "#213352",
}

local p = {
  bg             = c.bg0,
  bg_alt         = c.bg1,
  bg_float       = c.bg2,
  bg_cursor      = c.bg1,
  bg_select      = c.bg2,
  bg_visual      = c.bg3,
  border         = c.bg3,
  fg             = c.fg1,
  fg_dim         = c.fg4,
  fg_faint       = c.bg4,
  cursor         = c.fg1,
  cursor_nr      = c.yellow,

  comment        = c.comment,
  string         = c.green,
  number         = c.purple,
  keyword        = c.red,
  type           = c.yellow,
  builtin        = c.orange,
  definition     = c.green,
  macro          = c.purple,
  import         = c.aqua,
  heading        = c.green,
  operator       = c.orange,
  bracket        = c.orange,
  delimiter      = c.orange,
  matchparen     = c.bg3,
  warn           = c.yellow,

  red            = c.red,
  green          = c.green,

  terminal = {
    "#282828", "#cc241d", "#98971a", "#d79921",
    "#458588", "#b16286", "#689d6a", "#dfaf87",
    "#928374", "#fb4934", "#b8bb26", "#fabd2f",
    "#83a598", "#d3869b", "#8ec07c", "#ebdbb2",
  },

  groups = require("slabaster.groups.gruvbox")(c),
}

require("slabaster.theme").load("slabaster-gruvbox", p)
