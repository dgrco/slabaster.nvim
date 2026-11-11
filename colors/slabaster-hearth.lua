local p = {
  bg          = "#0f0e0d",
  bg_alt      = "#181614",
  bg_float    = "#181614",
  bg_cursor   = "#1b1917",
  bg_select   = "#2b2723",
  bg_visual   = "#34302a",
  border      = "#2b2723",
  fg          = "#c9bfb1",
  fg_dim      = "#8f877c",
  fg_faint    = "#4d4842",
  cursor      = "#e2b34c",
  cursor_text = "#0f0e0d",
  cursor_nr   = "#e2b34c",

  comment     = "#7b746b",
  string      = "#c7c493",
  number      = "#8fc46f",
  boolean     = "#d97a98",
  keyword     = "#ecd7a4",
  type        = "#e2b34c",
  builtin     = "#6aa6d4",
  macro       = "#6aa6d4",
  definition  = "#e0663a",
  default_library = "#e0663a",
  import      = "#ecd7a4",
  heading     = "#e2b34c",
  operator    = "#a89c8c",
  bracket     = "#7d7266",
  delimiter   = "#7d7266",
  matchparen  = "#6aa6d4",
  warn        = "#e09040",

  red         = "#d9534a",
  green       = "#8fc46f",

  terminal = {
    "#0f0e0d", "#d9534a", "#8fc46f", "#e2b34c",
    "#6aa6d4", "#d97a98", "#7cb8a8", "#c9bfb1",
    "#5c564f", "#e66f5f", "#a5d389", "#ecc76e",
    "#8bbbe0", "#e596ae", "#98cbbd", "#e8dfd2",
  },

  groups = {
    ["@function.call"]        = { fg = "#e0663a" },
    ["@function.method.call"] = { fg = "#e0663a" },
    ["@method.call"]          = { fg = "#e0663a" },
    ["@lsp.type.function"]    = { fg = "#e0663a" },
    ["@lsp.type.method"]      = { fg = "#e0663a" },
  },
}

require("slabaster.theme").load("slabaster-hearth", p)
