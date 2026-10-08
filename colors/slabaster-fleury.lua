local p = {
  bg          = "#0a0a0a",
  bg_alt      = "#141414",
  bg_float    = "#141414",
  bg_cursor   = "#171717",
  bg_select   = "#26262d",
  bg_visual   = "#2b2b36",
  border      = "#2a2a2a",
  fg          = "#bca68d",
  fg_dim      = "#9a9388",
  fg_faint    = "#4c4944",
  cursor      = "#c2baa7",
  cursor_nr   = "#cdac68",

  comment     = "#8c8780",
  string      = "#aeb582",
  number      = "#db9e64",
  keyword     = "#d9cead",
  type        = "#cdac68",
  builtin     = "#91a9b8",
  macro       = "#91a9b8",
  definition  = "#ca8664",
  import      = "#aeb582",
  heading     = "#cdac68",
  operator    = "#9a9388",
  bracket     = "#776f66",
  delimiter   = "#776f66",
  matchparen  = "#db9e64",
  warn        = "#c59f6d",

  red         = "#c0604a",
  green       = "#95a580",

  terminal = {
    "#0a0a0a", "#c0604a", "#95a580", "#cdac68",
    "#91a9b8", "#a8808f", "#78a39c", "#a59d8f",
    "#5f5b55", "#cc7a62", "#a4b48f", "#d9cead",
    "#93abb9", "#bb98a5", "#93b6b0", "#bca68d",
  },

  groups = {
    ["@function.call"]        = { fg = "#ca8664" },
    ["@function.method.call"] = { fg = "#ca8664" },
    ["@method.call"]          = { fg = "#ca8664" },
    ["@lsp.type.function"]    = { fg = "#ca8664" },
    ["@lsp.type.method"]      = { fg = "#ca8664" },
    ["@constant"]             = { fg = "#db9e64" },
    ["@lsp.type.enumMember"]  = { fg = "#db9e64" },
  },
}

require("slabaster.theme").load("slabaster-fleury", p)
