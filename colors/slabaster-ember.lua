local p = {
  bg          = "#0c0c0c",
  bg_alt      = "#151418",
  bg_float    = "#151418",
  bg_cursor   = "#1c1b22",
  bg_select   = "#27262f",
  bg_visual   = "#2d2c38",
  border      = "#2a2930",
  fg          = "#b5aa9a",
  fg_dim      = "#8f877b",
  fg_faint    = "#4a4640",
  cursor      = "#d8ccb8",
  cursor_nr   = "#dcbc62",

  comment     = "#8a857d",
  string      = "#a9b86a",
  number      = "#7fb86a",
  keyword     = "#cf9a55",
  type        = "#dcbc62",
  builtin     = "#d06a7c",
  macro       = "#d06a7c",
  definition  = "#d8735a",
  import      = "#cf9a55",
  heading     = "#dcbc62",
  operator    = "#8f877b",
  bracket     = "#7a6f62",
  delimiter   = "#7a6f62",
  matchparen  = "#72b2a8",
  warn        = "#d49a4a",

  red         = "#cf5a4a",
  green       = "#7fb86a",

  terminal = {
    "#0c0c0c", "#cf5a4a", "#7fb86a", "#dcbc62",
    "#6f9fc0", "#d06a7c", "#72b2a8", "#b5aa9a",
    "#5a5650", "#dc7362", "#97c985", "#e6cc80",
    "#8ab4d0", "#dc8696", "#8ec6bd", "#d8ccb8",
  },

  groups = {
    ["@function.call"]        = { fg = "#72b2a8" },
    ["@function.method.call"] = { fg = "#72b2a8" },
    ["@method.call"]          = { fg = "#72b2a8" },
    ["@lsp.type.function"]    = { fg = "#72b2a8" },
    ["@lsp.type.method"]      = { fg = "#72b2a8" },
    ["@constant"]             = { fg = "#d06a7c" },
    ["@lsp.type.enumMember"]  = { fg = "#d06a7c" },
  },
}

require("slabaster.theme").load("slabaster-ember", p)
