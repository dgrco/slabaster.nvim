-- Palette

local p = {
  bg          = "#0E1415",
  bg_alt      = "#141B1C",
  bg_float    = "#192223",
  bg_cursor   = "#161D1E",
  bg_select   = "#1C3D3A",
  bg_visual   = "#1C3D3A",
  border      = "#33403F",
  fg          = "#DBCBA6",
  fg_dim      = "#8A8272",
  fg_faint    = "#5A6362",
  cursor      = "#DBCBA6",

  comment     = "#3D9A48",
  string      = "#3CA599",
  number      = "#75C7BD",
  keyword     = "#F0E6D2",
  type        = "#82CE8A",
  builtin     = "#75C7BD",
  -- Naysayer's function/keyword faces are both plain white; we split them
  -- so declarations/definitions read as a distinct hue from keywords.
  definition  = "#7AACDB",

  red         = "#C85D60",
  green       = "#87A85B",
  yellow      = "#CDAA66",
  blue        = "#7AACDB",
  cyan        = "#519FAD",
  gray        = "#5A6362",
}

require("slabaster.theme").load("slabaster", p)
