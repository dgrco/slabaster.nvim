local p = {
  bg          = "#1a1a1a",
  bg_alt      = "#222222",
  bg_float    = "#222222",
  bg_cursor   = "#222222",
  bg_select   = "#333333",
  bg_visual   = "#3d3d3d",
  border      = "#333333",
  fg          = "#ecf0f1",
  fg_dim      = "#95a5a6",
  fg_faint    = "#555555",
  cursor      = "#ecf0f1",

  comment     = "#767676",
  string      = "#f2c94c",
  number      = "#b48cf2",
  keyword     = "#f8584a",
  type        = "#62c0f5",
  builtin     = "#62c0f5",
  definition  = "#3ddc84",
  import      = "#f8584a",
  heading     = "#62c0f5",
  operator    = "#95a5a6",
  matchparen  = "#f5953d",
  warn        = "#f5953d",

  red         = "#f8584a",
  green       = "#3ddc84",

  terminal = {
    "#1a1a1a", "#f8584a", "#3ddc84", "#f2c94c",
    "#62c0f5", "#b48cf2", "#36c9b6", "#bdc3c7",
    "#767676", "#ff7a6e", "#6ee8a2", "#f7d978",
    "#8ad0f8", "#c9a8f6", "#6fe0d2", "#ecf0f1",
  },

  groups = {
    ["@lsp.typemod.function.defaultLibrary"] = { fg = "#ecf0f1" },
    ["@lsp.typemod.method.defaultLibrary"]   = { fg = "#ecf0f1" },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = "#ecf0f1" },
  },
}

require("slabaster.theme").load("slabaster-flat", p)
